import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class MatchLimitPicker extends StatefulWidget {
  final MatchLimitType initial;
  final List<MatchLimitType> values;
  final ValueChanged<MatchLimit> onChanged;

  const MatchLimitPicker({
    super.key,
    required this.initial,
    required this.values,
    required this.onChanged,
  });

  @override
  State<MatchLimitPicker> createState() => _MatchLimitPickerState();
}

class _MatchLimitPickerState extends State<MatchLimitPicker> {
  int? limit;
  late MatchLimitType selectedType;

  @override
  void initState() {
    super.initState();
    selectedType = widget.initial;
    limit = selectedType.initialLimitValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 88.toHeight,
            enableInfiniteScroll: false,
            initialPage: widget.values.indexOf(selectedType),
            onPageChanged: (index, _) => onModeChanged(
              typeValue: widget.values[index],
            ),
          ),
          items: widget.values
              .map(
                (item) => _MatchLimitTypeView(
                  type: item,
                  selected: item == selectedType,
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  void onModeChanged({int? limitValue, MatchLimitType? typeValue}) {
    setState(() {
      if (typeValue != null) {
        selectedType = typeValue;
        limit = selectedType.initialLimitValue;
      } else if (limitValue != null) {
        limit = limitValue;
      }
      late MatchLimit mode;
      final value = limit ?? selectedType.initialLimitValue;
      switch (selectedType) {
        case MatchLimitType.infinite:
          mode = const MatchLimit.infinite();
          break;
        case MatchLimitType.timerLimit:
          mode = MatchLimit.timerLimit(value);
          break;
        case MatchLimitType.expressionsLimit:
          mode = MatchLimit.expressionsLimit(value);
          break;
        case MatchLimitType.answersLimit:
          mode = MatchLimit.answersLimit(value);
          break;
      }
      widget.onChanged(mode);
    });
  }
}

class _MatchLimitTypeView extends StatelessWidget {
  final MatchLimitType type;
  final bool selected;

  const _MatchLimitTypeView({
    required this.type,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final textStyle = selected
        ? style.textStyle.semiBoldFont.tileTitle
        : style.textStyle.regularFont.simple
            .copyWith(colorHex: style.neutralColorHex);
    switch (type) {
      case MatchLimitType.infinite:
        return Center(
          child: AppText(
            type.title,
            uiStyle: textStyle,
          ),
        );
      default:
        return Container(
          width: 164.toHeight,
          alignment: Alignment.center,
          child: AppText(
            type.title,
            uiStyle: textStyle,
          ),
        );
    }
  }
}
