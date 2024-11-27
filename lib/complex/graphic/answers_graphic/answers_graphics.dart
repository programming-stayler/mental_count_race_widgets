import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class PlayerAnswersGraphic extends StatefulWidget {
  final List<ExpressionAnswer> answers;

  PlayerAnswersGraphic({
    super.key,
    required this.answers,
  }) : assert(answers.isNotEmpty, 'Answers must not be empty');

  @override
  State<PlayerAnswersGraphic> createState() => _PlayerAnswersGraphicState();
}

class _PlayerAnswersGraphicState extends State<PlayerAnswersGraphic> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return AppContainer.fromStyle(
      style: style.containerStyle.copyWith(
        decoration: style.containerStyle.decoration?.copyWith(
          colorHex: style.appSheetStyle.colorHex,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppPadding.verticalPadding8,
          AppText(
            'Answers speed',
            textAlign: TextAlign.center,
            uiStyle: style.textStyle.regularFont.tileTitle,
          ),
          AppPadding.verticalPadding16,
          AppPadding.horizontalWrapper16(
            child: AnswersGraphic(
              answers: widget.answers,
              showingIndicators: [selectedIndex],
            ),
          ),
          AppPadding.verticalPadding16,
          CarouselSlider.builder(
            itemBuilder: (context, index, _) {
              final answer = widget.answers[index];
              return Row(
                children: [
                  AppText(
                    '${index + 1}.',
                    uiStyle: style.textStyle.regularFont.tileTitle,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: ExpressionText(
                            model: ExpressionTextModel.expressionAnswer(
                              answer: answer,
                            ),
                            selected: index == selectedIndex,
                          ),
                        ),
                        AppPadding.horizontalPadding4,
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: AppText(
                            '(${(answer.msTaken / 1000).toStringAsFixed(2)})',
                            uiStyle: style.textStyle.lightFont.hint.copyWith(
                              colorHex: style.neutralColorHex,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            options: _CarouselOptions(
              onPageChanged: (index, _) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            itemCount: widget.answers.length,
          ),
        ],
      ),
    );
  }
}

class _CarouselOptions extends CarouselOptions {
  _CarouselOptions({
    super.onPageChanged,
  }) : super(
          height: 140.toHeight,
          viewportFraction: 0.35,
          enableInfiniteScroll: false,
          scrollDirection: Axis.vertical,
        );
}

class AnswersGraphic extends StatelessWidget {
  final List<ExpressionAnswer> answers;
  final List<int> showingIndicators;

  const AnswersGraphic({
    super.key,
    required this.answers,
    this.showingIndicators = const [],
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final lineBarsData = _LineChartBarData(
      spots: answers.buildSpots(),
      showingIndicators: showingIndicators,
    );
    return SizedBox(
      height: 164,
      child: LineChart(
        LineChartData(
          lineTouchData: _LineTouchData(),
          lineBarsData: [lineBarsData],
          titlesData: _FlTitlesData(style),
          gridData: const FlGridData(show: false),
          borderData: _FlBorderData(borderColor: style.borderColorHex.color),
          minY: 0,
          minX: 0,
        ),
      ),
    );
  }
}

final belowBarGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: complexityColors.map((color) => color.withOpacity(0.4)).toList(),
);

const generalGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: complexityColors,
);

class _FlBorderData extends FlBorderData {
  _FlBorderData({
    required Color borderColor,
  }) : super(
          show: true,
          border: Border(
            left: BorderSide(color: borderColor, width: 2),
            bottom: BorderSide(color: borderColor, width: 2),
          ),
        );
}

class _FlTitlesData extends FlTitlesData {
  _FlTitlesData(AppStyleSystem style)
      : super(
          rightTitles: const AxisTitles(),
          topTitles: const AxisTitles(),
          bottomTitles: AxisTitles(
            axisNameWidget: AppText(
              'Chronology',
              uiStyle: style.textStyle.lightFont.description.copyWith(
                colorHex: style.neutralColorHex,
              ),
            ),
            axisNameSize: 24,
            sideTitles: const SideTitles(
              reservedSize: 0,
            ),
          ),
          leftTitles: AxisTitles(
            axisNameWidget: AppText(
              'Ans/min',
              uiStyle: style.textStyle.lightFont.description.copyWith(
                colorHex: style.neutralColorHex,
              ),
            ),
            axisNameSize: 24,
            sideTitles: const SideTitles(
              reservedSize: 0,
            ),
          ),
        );
}

class _LineTouchData extends LineTouchData {
  _LineTouchData()
      : super(
          handleBuiltInTouches: false,
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (touchedSpot) => Colors.pink,
            tooltipRoundedRadius: 8,
            getTooltipItems: (lineBarsSpot) {
              return lineBarsSpot.map((lineBarSpot) {
                return LineTooltipItem(
                  lineBarSpot.y.toString(),
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }).toList();
            },
          ),
        );
}

class _LineChartBarData extends LineChartBarData {
  _LineChartBarData({
    super.spots,
    super.showingIndicators,
  }) : super(
          belowBarData: BarAreaData(
            show: true,
            gradient: belowBarGradient,
          ),
          dotData: const FlDotData(show: false),
          gradient: generalGradient,
        );
}

extension ExpressionAnswerListSpots on List<ExpressionAnswer> {
  List<FlSpot> buildSpots() {
    return mapIndexed(
      (i, answer) => FlSpot(i.toDouble(), answer.speed),
    ).toList();
  }
}
