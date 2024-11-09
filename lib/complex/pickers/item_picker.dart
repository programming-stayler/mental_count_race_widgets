import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ItemPicker<T extends TitleItemInterface> extends StatefulWidget {
  final int initIndex;
  final List<T> items;
  final Color bgColor;
  final Widget Function(int)? builder;
  final ValueChanged<int>? onChanged;

  const ItemPicker({
    super.key,
    required this.items,
    required this.bgColor,
    this.initIndex = 0,
    this.builder,
    this.onChanged,
  });

  @override
  State<ItemPicker> createState() => _ItemPickerState();
}

class _ItemPickerState extends State<ItemPicker> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initIndex;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        final style = AppGlobalStyle.of(context).style;
        final widgets = widget.items.mapIndexed((index, item) {
          final textStyle = index == selectedIndex
              ? style.textStyle.semiBoldFont.tileTitle
              : style.textStyle.regularFont.buttonTitle
                  .copyWith(colorHex: style.neutralColorHex);
          return Center(
            child: AppText(
              item.title,
              uiStyle: textStyle,
            ),
          );
        }).toList();
        switch (sizingInfo.deviceScreenType) {
          case DeviceScreenType.mobile:
            return ShadowWrapper(
              color: widget.bgColor,
              child: CarouselSlider.builder(
                options: _CarouselOptions(
                  initialPage: selectedIndex,
                  onPageChanged: (index, _) => setState(() {
                    selectedIndex = index;
                    widget.onChanged?.call(index);
                  }),
                ),
                itemCount: widget.items.length,
                itemBuilder: (context, index, _) => widgets[index],
              ),
            );
          default:
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                ...widgets.fold(
                    <Widget>[],
                    (res, next) => [
                          ...res,
                          InkWell(
                            onTap: () {
                              final index = widgets.indexOf(next);
                              selectedIndex = index;
                              widget.onChanged?.call(index);
                            },
                            child: next,
                          ),
                          AppPadding.horizontalPadding8,
                        ]),
                const Spacer(),
              ],
            );
        }
      },
    );
  }
}

class _CarouselOptions extends CarouselOptions {
  _CarouselOptions({
    super.initialPage,
    super.onPageChanged,
  }) : super(
          height: 44.toHeight,
          enlargeFactor: 0.15,
          viewportFraction: 0.35,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
        );
}
