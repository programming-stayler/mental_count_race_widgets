import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class MatchClockWidget extends StatefulWidget {
  final StopWatchTimer? stopWatchTimer;
  final String defaultTime;

  const MatchClockWidget({
    super.key,
    required this.defaultTime,
    required this.stopWatchTimer,
  });

  @override
  State<MatchClockWidget> createState() => _MatchClockWidgetState();
}

class _MatchClockWidgetState extends State<MatchClockWidget> {
  @override
  Widget build(BuildContext context) {
    final timerStream = widget.stopWatchTimer?.rawTime;
    final style = AppGlobalStyle.of(context).style;
    if (timerStream == null) {
      return AppText(
        widget.defaultTime,
        uiStyle: style.textStyle.semiBoldFont.numberTitle,
      );
    }
    return StreamBuilder<int>(
      stream: timerStream,
      builder: (context, snap) {
        var displayTime = widget.defaultTime;
        final value = snap.data;
        if (value != null) {
          displayTime = StopWatchTimer.getDisplayTime(
            value,
            hours: false,
            milliSecond: false,
          );
        }
        return AppText(
          displayTime,
          uiStyle: style.textStyle.semiBoldFont.numberTitle,
        );
      },
    );
  }
}
