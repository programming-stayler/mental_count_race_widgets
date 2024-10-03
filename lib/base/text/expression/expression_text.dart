import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

export 'models/models.dart';

class ExpressionText extends StatelessWidget {
  final ExpressionTextModel model;
  final bool? selected;

  const ExpressionText({
    super.key,
    required this.model,
    this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final textStyle = style.textStyle.regularFont.numberTitle.copyWith(
      colorHex: '808285',
    );
    final selectedTextStyle = style.textStyle.semiBoldFont.numberTitle.copyWith(
      colorHex: '343434',
    );
    return Container(
      constraints: BoxConstraints(
        minWidth: 24.toWidth,
      ),
      child: AppText(
        model.title,
        textAlign: TextAlign.center,
        uiStyle: selected == null || selected! ? selectedTextStyle : textStyle,
      ),
    );
  }
}
