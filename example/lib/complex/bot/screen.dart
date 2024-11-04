import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class BotGuideScreen extends StatefulWidget {
  static const route = '/bot_guide';

  const BotGuideScreen({super.key});

  @override
  State<BotGuideScreen> createState() => _BotGuideScreenState();

  static PageRoute<BotGuideScreen> getRoute() {
    const settings = RouteSettings(name: route);

    return MaterialPageRoute(
      builder: (_) => const BotGuideScreen(),
      settings: settings,
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
        AppSheetBar(
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
              height: 44.toHeight,
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
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return PaceBotWidget(
          botUser: botUser,
          onApplyBot: (value) {
            setState(() => this.botUser = value);
            Navigator.of(context).pop();
          },
          onCancel: Navigator.of(context).pop,
        );
      },
    );
  }
}
