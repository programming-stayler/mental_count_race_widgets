import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'package:pythagoras_match/pythagoras_match.dart';

class MatchPlayerTile extends StatelessWidget {
  final MatchPlayer player;

  const MatchPlayerTile({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    late Widget body;
    late Widget icon;
    final style = AppGlobalStyle.of(context).style;
    final textStyle = style.textStyle.regularFont.tileTitle;
    player.user.maybeMap(
      bot: (bot) {
        body = AppText(
          bot.title,
          uiStyle: textStyle,
          textAlign: TextAlign.start,
        );
        icon = BotIcon(
          pace: bot.pace,
          size: 26.toWidth,
        );
      },
      orElse: () {
        body = AppText(
          player.user.nickname,
          uiStyle: textStyle,
          textAlign: TextAlign.start,
        );
        icon = player.status == MatchPlayerStatusV1.ready
            ? Icon(
          Icons.check_circle_outline,
          color: style.positiveColorHex.color,
        )
            : SizedBox(
          width: 24.toWidth,
          height: 24.toWidth,
          child: CircularProgressIndicator(
            color: style.actionColorHex.color,
          ),
        );
      },
    );

    return Row(
      children: [
        Expanded(child: body),
        AppPadding.horizontalPadding4,
        icon,
      ],
    );
  }
}