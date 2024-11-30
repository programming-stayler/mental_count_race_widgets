import 'dart:math';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class SpeedSelectorWidget extends StatefulWidget {
  final int initValue;
  final ValueChanged<int> onChanged;
  final VoidCallback onConfirm;
  final String confirmTitle;
  final String? cancelTitle;

  SpeedSelectorWidget({
    super.key,
    required this.onChanged,
    required this.onConfirm,
    required this.confirmTitle,
    required int initValue,
    this.cancelTitle,
  }) : initValue = max(minSpeed, min(maxSpeed, initValue));

  @override
  State<SpeedSelectorWidget> createState() => _SpeedSelectorWidgetState();
}

class _SpeedSelectorWidgetState extends State<SpeedSelectorWidget> {
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
        return AppPadding.horizontalWrapper16(
          child: Column(
            children: [
              const Spacer(),
              AppPadding.horizontalWrapper16(
                child: SpeedValueWidget(speed: speed),
              ),
              const Spacer(),
              Slider(
                activeColor: style.style.actionColorHex.color,
                value: speed.toDouble(),
                max: maxSpeed.toDouble(),
                divisions: maxSpeed - minSpeed,
                onChanged: (double value) {
                  speed = max(minSpeed, min(maxSpeed, value.toInt()));
                  widget.onChanged(speed);
                },
              ),
              AppPadding.verticalPadding16,
              AppPadding.horizontalWrapper8(
                child: SizedBox(
                  height: min(48.toHeight, 50),
                  child: AppActionButton(
                    text: 'Apply Speed',
                    onTap: widget.onConfirm,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SpeedValueWidget extends StatelessWidget {
  final int speed;

  const SpeedValueWidget({
    super.key,
    required this.speed,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context);
    return Stack(
      children: [
        SizedBox(
          height: min(200.toHeight, 240),
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
                thickness: 32,
              ),
              pointer: GaugePointer.triangle(
                borderRadius: 4,
                color: style.style.neutralColorHex.color,
                // style.style.neutralColorHex.color,
                width: 24,
                height: 44,
                border: GaugePointerBorder(
                  width: 2,
                  color: style.style.borderColorHex.color,
                ),
              ),
              progressBar: GaugeProgressBar.basic(
                color: style.style.positiveColorHex.color,
              ),
              segments: [
                GaugeSegment(
                  from: 0,
                  to: 100,
                  cornerRadius: const Radius.circular(6),
                  gradient: GaugeAxisGradient(
                    colors: style.sectionColors,
                    colorStops: sectionsStops,
                  ),
                  border: GaugeBorder(
                    width: 4,
                    color: style.style.borderColorHex.color,
                  ),
                ),
              ],
            ),
            builder: (context, _, value) => Center(
              child: Column(
                children: [
                  AnimatedFlipCounter(
                    textStyle: style.style.textStyle.boldFont.profile.textStyle.copyWith(
                      color: lerpGradient(
                        style.sectionColors,
                        sectionsStops,
                        speed / (maxSpeed - minSpeed),
                      ),
                    ),
                    duration: 150.milliseconds,
                    value: value,
                  ),
                  AppText(
                    'exprs/min',
                    uiStyle: style.style.textStyle.regularFont.simple.copyWith(
                      colorHex: style.style.neutralColorHex,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
