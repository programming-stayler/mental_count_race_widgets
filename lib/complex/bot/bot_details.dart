import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class PaceBotWidget extends StatefulWidget {
  static const route = '/pace_bot';

  final BotUser? botUser;
  final ValueChanged<BotUser> onApplyBot;

  const PaceBotWidget({
    super.key,
    this.botUser,
    required this.onApplyBot,
  });

  @override
  State<PaceBotWidget> createState() => _PaceBotWidgetState();

  static Future<void> showModalScreen(
    BuildContext context, {
    required ValueChanged<BotUser> onApplyBot,
    BotUser? botUser,
  }) async {
    final style = AppGlobalStyle.of(context).style;
    final border = style.appSheetStyle.border?.border;
    final radius = style.appSheetStyle.borderRadius?.borderRadius;
    final bgColor = style.appSheetStyle.colorHex?.color ?? Colors.white;
    if (kIsWeb) {
      showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext context, _, __) => Dialog(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: border?.bottom.width ?? 0,
              color: bgColor,
            ),
            borderRadius: radius ?? BorderRadius.zero,
          ),
          child: Container(
            constraints: const BoxConstraints(
              maxHeight: 540,
              maxWidth: 600,
            ),
            child: PaceBotWidget(
              onApplyBot: onApplyBot,
              botUser: botUser,
            ),
          ),
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: border?.bottom.width ?? 0,
            color: bgColor,
          ),
          borderRadius: radius ?? BorderRadius.zero,
        ),
        builder: (context) => PaceBotWidget(
          onApplyBot: onApplyBot,
          botUser: botUser,
        ),
      );
    }
  }

  static PageRoute<PaceBotWidget> getRoute({
    required VoidCallback onCancel,
    required ValueChanged<BotUser> onApplyBot,
    BotUser? botUser,
  }) {
    return MaterialPageRoute(
      builder: (_) => PaceBotWidget(
        onApplyBot: onApplyBot,
        botUser: botUser,
      ),
      settings: const RouteSettings(name: route),
    );
  }
}

class _PaceBotWidgetState extends State<PaceBotWidget> {
  late int pace;

  @override
  void initState() {
    pace = widget.botUser?.pace ?? 25;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppPadding.verticalPadding12,
          AppSheetBar(
            title: Row(
              children: [
                AppText(
                  widget.botUser != null ? 'Edit Bot' : 'Add Bot',
                  uiStyle: style.textStyle.regularFont.tileTitle,
                ),
                AppPadding.horizontalPadding8,
                BotIcon(
                  pace: pace,
                )
              ],
            ),
          ),
          AppPadding.verticalPadding16,
          Expanded(
            child: SpeedSelectorWidget(
              initValue: pace,
              confirmTitle: widget.botUser == null ? 'Add' : 'Apply',
              onChanged: (value) => setState(
                () => pace = value,
              ),
              onConfirm: () {
                widget.onApplyBot(
                  (widget.botUser ?? generateBotFromPace(pace)).copyWith(
                    pace: pace,
                  ),
                );
              },
            ),
          ),
          AppPadding.verticalPadding16,
          SizedBox(height: context.padding.bottom),
        ],
      ),
    );
  }
}

BotUser generateBotFromPace(int pace) {
  return BotUser(
    localId: faker.internet.ipv6Address(),
    nickname: 'Pace Bot',
    pace: pace,
  );
}
