import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';
import 'package:wheel_slider/wheel_slider.dart';

class PaceBotWidget extends StatefulWidget {
  final BotUser? botUser;
  final VoidCallback onCancel;
  final ValueChanged<BotUser> onApplyBot;

  const PaceBotWidget({
    super.key,
    this.botUser,
    required this.onApplyBot,
    required this.onCancel,
  });

  @override
  State<PaceBotWidget> createState() => _PaceBotWidgetState();
}

class _PaceBotWidgetState extends State<PaceBotWidget> {
  late int pace;

  @override
  void initState() {
    pace = widget.botUser?.pace ?? 45;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final textStyle = style.textStyle;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppPadding.verticalPadding16,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppPadding.horizontalPadding16,
            SizedBox(
              width: 64.toWidth,
              height: 64.toWidth,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                    EdgeInsets.zero,
                  ),
                ),
                child: BotIcon(
                  pace: pace,
                ),
              ),
            ),
            AppPadding.horizontalPadding16,
            AppText(
              'Pace Bot: ',
              uiStyle: textStyle.semiBoldFont.tileTitle.copyWith(
                colorHex: style.neutralColorHex,
              ),
            ),
            SizedBox(
              width: 40.toWidth,
              child: AppText(
                pace.toString(),
                uiStyle: textStyle.semiBoldFont.tileTitle,
                textAlign: TextAlign.end,
              ),
            ),
            AppText(
              ' expr/min',
              uiStyle: textStyle.regularFont.tileTitle.copyWith(
                colorHex: style.neutralColorHex,
              ),
            ),
            AppPadding.horizontalPadding16,
          ],
        ),
        SpeedValueWidget(
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
          onCancel: widget.onCancel,
        ),
      ],
    );
  }
}

class SpeedValueWidget extends StatefulWidget {
  final int initValue;
  final ValueChanged<int> onChanged;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;
  final String confirmTitle;
  final String? cancelTitle;

  SpeedValueWidget({
    super.key,
    required this.onChanged,
    required this.onConfirm,
    required this.onCancel,
    required this.confirmTitle,
    required int initValue,
    this.cancelTitle,
  }) : initValue = max(minSpeed, min(maxSpeed, initValue));

  @override
  State<SpeedValueWidget> createState() => _SpeedValueWidgetState();
}

class _SpeedValueWidgetState extends State<SpeedValueWidget> {
  late int speed;
  late int prevOffset;
  static const wheelKoef = 100;

  @override
  void initState() {
    super.initState();
    speed = widget.initValue;
    prevOffset = maxSpeed * wheelKoef ~/ 2;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final style = AppGlobalStyle.of(context);
        final textStyle = style.style.textStyle.semiBoldFont.tileTitle;
        return AppPadding.horizontalWrapper16(
          child: Column(
            children: [
              AppPadding.horizontalWrapper16(
                child: SizedBox(
                  height: 260.toHeight,
                  child: AnimatedRadialGauge(
                    initialValue: speed.toDouble(),
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.elasticOut,
                    value: speed.toDouble(),
                    axis: GaugeAxis(
                      min: minSpeed.toDouble(),
                      max: maxSpeed.toDouble(),
                      degrees: 180,
                      style: const GaugeAxisStyle(
                        thickness: 20,
                      ),
                      pointer: GaugePointer.needle(
                        borderRadius: 16,
                        color: style.style.neutralColorHex.color,
                        width: 16.toWidth,
                        height: 100.toHeight,
                      ),
                      progressBar: GaugeProgressBar.basic(
                        color: style.style.positiveColorHex.color,
                      ),
                      segments: [
                        GaugeSegment(
                          from: 0,
                          to: 100,
                          gradient: GaugeAxisGradient(
                            colors: style.sectionColors,
                            colorStops: sectionsStops,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              WheelSlider(
                totalCount: maxSpeed * wheelKoef,
                initValue: prevOffset,
                enableAnimation: false,
                pointerColor: Colors.redAccent,
                onValueChanged: (offset) {
                  if (offset is int) {
                    final normalizedOffset = offset ~/ 4;
                    speed = max(
                      minSpeed,
                      min(maxSpeed, speed + (normalizedOffset - prevOffset)),
                    );
                    widget.onChanged(speed);
                    prevOffset = normalizedOffset;
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppPadding.horizontalPadding8,
                  Expanded(
                    child: ElevatedButton(
                      onPressed: widget.onCancel,
                      child: AppText(
                        widget.cancelTitle ?? 'Cancel',
                        uiStyle: textStyle.copyWith(
                          colorHex: style.style.negativeColorHex,
                        ),
                      ),
                    ),
                  ),
                  AppPadding.horizontalPadding16,
                  Expanded(
                    child: ElevatedButton(
                      onPressed: widget.onConfirm,
                      child: AppText(
                        widget.confirmTitle,
                        uiStyle: textStyle.copyWith(
                          colorHex: style.style.actionColorHex,
                        ),
                      ),
                    ),
                  ),
                  AppPadding.horizontalPadding8,
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
/*
              SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    minimum: minSpeed.toDouble(),
                    maximum: maxSpeed.toDouble(),
                    startAngle: 150,
                    endAngle: 30,
                    ranges: <GaugeRange>[
                      GaugeRange(
                        startValue: minSpeed.toDouble(),
                        endValue: maxSpeed.toDouble(),
                        startWidth: 20,
                        endWidth: 20,
                        gradient: const SweepGradient(
                          stops: sectionsStops,
                          colors: sectionsColors,
                        ),
                      ),
                    ],
                    pointers: <GaugePointer>[
                      NeedlePointer(
                        value: speed.toDouble(),
                        animationDuration: 300,
                        enableAnimation: true,
                      ),
                    ],
                  ),
                ],
              ),
 */

BotUser generateBotFromPace(int pace) {
  return BotUser(
    localId: faker.internet.ipv6Address(),
    nickname: 'Pace Bot',
    pace: pace,
  );
}
