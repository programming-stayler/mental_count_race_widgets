import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

const _minRateValue = 0.00;
const _maxRateValue = 1.0;

class PlayerProgress extends AppAnimatedWidget {
  final Color? strokeColor;
  final bool omitStartBorderRadius;
  final Widget? valueWidget;
  final User? user;
  final bool showUserName;
  final bool desaturate;

  PlayerProgress({
    super.key,
    required double value,
    super.animateFromLastPercent = true,
    super.animationDelay = 0,
    super.normalize = false,
    this.strokeColor,
    this.omitStartBorderRadius = false,
    this.showUserName = true,
    this.desaturate = false,
    this.valueWidget,
    this.user,
  }) : super(
          value: min(
            _maxRateValue,
            max(value, _minRateValue),
          ),
        );

  @override
  ProgressLineState createState() => ProgressLineState();
}

class ProgressLineState extends AppAnimatedState<PlayerProgress> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    Widget? avatarWidget;
    Widget? usernameWidget;
    final valueWidget = widget.valueWidget;
    const avatarSizeType = DynamicAvatarSizeType.middle;
    final avatarHeight = avatarSizeType.size;
    final style = AppGlobalStyle.of(context).style;
    if (widget.user != null) {
      avatarWidget = widget.user!.map(
        server: (server) => DynamicAvatar.fromType(
          server.nickname,
          sizeType: avatarSizeType,
          desaturate: widget.desaturate,
        ),
        anonymous: (local) => DynamicAvatar.fromType(
          local.nickname,
          sizeType: avatarSizeType,
          desaturate: widget.desaturate,
        ),
        bot: (bot) => BotAvatar(
          pace: bot.pace,
          size: avatarSizeType.size,
        ),
      );
      usernameWidget = AppText(
        widget.user!.nickname,
        textAlign: TextAlign.center,
        textHeightBehavior: const TextHeightBehavior(
          applyHeightToFirstAscent: false,
        ),
        uiStyle: style.textStyle.regularFont.simple.copyWith(
          colorHex: style.appSheetStyle.colorHex,
        ),
      );
    }
    final fillColors = <Color>[];
    if (widget.strokeColor != null) {
      fillColors.add(widget.strokeColor!);
    } else {
      fillColors.addAll(
        complexityColors
            .rangeFromValue(widget.value)
            .map((e) => e.withOpacity(widget.desaturate ? 0.35 : 1.0)),
      );
    }
    return SizedBox(
      height: avatarHeight,
      child: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final lineWidth = constraints.maxWidth * 0.95;
                final progressWidth = lineWidth * progress;
                final borderRadius = avatarHeight / 2;
                final offset = avatarHeight / 2;
                final avatarOffset = max(
                  -0.25 * offset,
                  progressWidth - 1.75 * offset,
                );
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: fillColors.length == 1 ? fillColors.first : null,
                        borderRadius: BorderRadius.horizontal(
                          left: widget.omitStartBorderRadius
                              ? Radius.zero
                              : Radius.circular(borderRadius),
                          right: Radius.circular(borderRadius),
                        ),
                        gradient: fillColors.length > 1
                            ? LinearGradient(colors: fillColors)
                            : null,
                      ),
                      width: progressWidth,
                      // height: lineHeight,
                    ),
                    if (usernameWidget != null && widget.showUserName)
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: borderRadius,
                        child: Container(
                          alignment: Alignment.center,
                          child: usernameWidget,
                        ),
                      ),
                    if (avatarWidget != null)
                      Positioned(
                        left: avatarOffset,
                        child: avatarWidget,
                      ),
                  ],
                );
              },
            ),
          ),
          if (valueWidget != null) ...[
            valueWidget,
          ],
        ],
      ),
    );
  }
}

extension ColorsList on List<Color> {
  List<Color> rangeFromValue(double value) {
    final step = 1 / max(1, length);
    var i = 0;
    var offset = 0.0;
    final result = [first];
    while (i < length && offset < value) {
      final next = this[i];
      result.add(next);
      offset += step;
      i += 1;
    }
    return result;
  }
}
