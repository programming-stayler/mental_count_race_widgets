import 'dart:math';

import 'package:example/complex/screen.dart';
import 'package:example/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class BotGuideScreen extends StatefulWidget {
  static const route = '/bot_guide';

  const BotGuideScreen({super.key});

  @override
  State<BotGuideScreen> createState() => _BotGuideScreenState();

  static GoRoute buildRoute() {
    return AppTransitionRoute(
      path: BotGuideScreen.route,
      builder: (context, state) {
        return const BotGuideScreen();
      },
    );
  }
}

class _BotGuideScreenState extends State<BotGuideScreen> {
  BotUser? botUser;

  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        WebAppBar(
          head: kIsWeb
              ? buildAppBarHead(context)
              : buildBackButton(() => context.go(ComplexGuideScreen.route)),
          title: AppText(
            'Bot Guide',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        AppPadding.verticalPadding16,
        if (botUser != null)
          AppPadding.horizontalWrapper16(
            child: InkWell(
              onTap: () {
                onBotPressed(botUser!);
              },
              child: MatchPlayerTile(
                player: MatchPlayer(user: botUser!),
              ),
            ),
          ),
        const Spacer(),
      ],
      bottomChildren: [
        if (botUser == null) ...[
          AppPadding.verticalPadding16,
          AppPadding.horizontalWrapper8(
            child: SizedBox(
              height: min(48.toHeight, 50),
              child: AppActionButton(
                text: 'Add Bot',
                onTap: onBotPressed,
              ),
            ),
          ),
          AppPadding.verticalPadding16,
        ],
      ],
    );
  }

  void onBotPressed([BotUser? botUser]) {
    PaceBotWidget.showModalScreen(
      context,
      botUser: botUser,
      onApplyBot: (value) {
        setState(() => this.botUser = value);
        Navigator.of(context).pop();
      },
    );
  }
}
