import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

export 'models/models.dart';

class ExpressionPartPicker extends StatefulWidget {
  final ComponentVM vm;
  final Color? color;

  const ExpressionPartPicker({
    super.key,
    required this.vm,
    this.color,
  });

  @override
  State<ExpressionPartPicker> createState() => _ExpressionPartPickerState();
}

class _ExpressionPartPickerState extends State<ExpressionPartPicker> {
  final controller = CarouselSliderController();
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.vm.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final style = AppGlobalStyle.of(context).style;
        final pickerWidget = SizedBox(
          width: 304.toWidth,
          child: ShadowWrapper(
            color: widget.color ?? style.screenBGColorHex.color,
            child: CarouselSlider(
              carouselController: controller,
              options: _CarouselOptions(
                initialPage: selectedIndex,
                onPageChanged: (index, _) {
                  setState(() => selectedIndex = index);
                  widget.vm.updateWithIndex(index);
                },
              ),
              items: widget.vm.options
                  .mapIndexed(
                    (index, e) => Container(
                  alignment: Alignment.center,
                  child: AppText(
                    e,
                    uiStyle: selectedIndex == index
                        ? style.textStyle.semiBoldFont.tileTitle
                        : style.textStyle.regularFont.simple
                        .copyWith(colorHex: style.neutralColorHex),
                  ),
                ),
              )
                  .toList(),
            ),
          ),
        );
        if (!kIsWeb) return pickerWidget;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 20.toWidth,
                color: style.neutralColorHex.color,
              ),
              onPressed: () {
                controller.animateToPage(selectedIndex - 1);
              },
            ),
            AppPadding.horizontalPadding16,
            pickerWidget,
            AppPadding.horizontalPadding16,
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_right,
                size: 20.toWidth,
                color: style.neutralColorHex.color,
              ),
              onPressed: () {
                controller.animateToPage(selectedIndex + 1);
              },
            ),
          ],
        );
      },
    );
  }
}

class _CarouselOptions extends CarouselOptions {
  _CarouselOptions({
    super.initialPage,
    super.onPageChanged,
  }) : super(
          height: 48.toHeight,
          enableInfiniteScroll: false,
          viewportFraction: 0.25,
          enlargeCenterPage: true,
          enlargeFactor: 0.45,
        );
}
