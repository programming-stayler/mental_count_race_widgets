import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

enum DynamicAvatarSizeType {
  profile,
  large,
  middle,
  small,
}

class DynamicAvatar extends StatelessWidget {
  final String title;
  final bool bordered;
  final bool desaturate;
  final DynamicAvatarSizeType sizeType;

  const DynamicAvatar._({
    required this.title,
    required this.sizeType,
    this.bordered = false,
    this.desaturate = false,
  });

  factory DynamicAvatar.small(String title) => DynamicAvatar._(
        title: title,
        sizeType: DynamicAvatarSizeType.small,
      );

  factory DynamicAvatar.large(String title) => DynamicAvatar._(
        title: title,
        sizeType: DynamicAvatarSizeType.large,
      );

  factory DynamicAvatar.profile(String title) => DynamicAvatar._(
        title: title,
        sizeType: DynamicAvatarSizeType.profile,
      );

  factory DynamicAvatar.middle(String title) => DynamicAvatar._(
        title: title,
        sizeType: DynamicAvatarSizeType.middle,
      );

  factory DynamicAvatar.fromType(
    String title, {
    bool bordered = false,
    bool desaturate = false,
    required DynamicAvatarSizeType sizeType,
  }) =>
      DynamicAvatar._(
        title: title,
        bordered: bordered,
        sizeType: sizeType,
        desaturate: desaturate,
      );

  @override
  Widget build(BuildContext context) {
    final text = title.isNotEmpty ? title[0] : '';
    final size = sizeType.size;
    final style = AppGlobalStyle.of(context).style;
    final desaturatedColor = style.desaturatedColorHex.color;
    final color = desaturate ? desaturatedColor : colorFromName(title);
    late Widget textWidget;
    switch (sizeType) {
      case DynamicAvatarSizeType.profile:
        textWidget = AppText(
          text,
          textAlign: TextAlign.end,
          uiStyle: style.textStyle.boldFont.profile,
        );
        break;
      case DynamicAvatarSizeType.large:
        textWidget = AppText(
          text,
          textAlign: TextAlign.end,
          uiStyle: style.textStyle.boldFont.tileTitle,
        );
        break;
      case DynamicAvatarSizeType.middle:
        textWidget = AppText(
          text,
          textAlign: TextAlign.center,
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToFirstAscent: true,
          ),
          uiStyle: style.textStyle.boldFont.simple.copyWith(
            colorHex: 'FFFFFF',
            height: 1,
          ),
        );
        break;
      case DynamicAvatarSizeType.small:
        textWidget = AppText(
          text,
          textAlign: TextAlign.center,
          uiStyle: style.textStyle.boldFont.description.copyWith(
            colorHex: 'FFFFFF',
            height: 1,
          ),
        );
        break;
    }
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size / 2 + 1),
      ),
      child: textWidget,
    );
  }
}

extension DynamicAvatarSizeTypeUtils on DynamicAvatarSizeType {
  double get size {
    switch (this) {
      case DynamicAvatarSizeType.profile:
        return 80.toHeight;
      case DynamicAvatarSizeType.large:
        return 32.toHeight;
      case DynamicAvatarSizeType.middle:
        return 24.toHeight;
      case DynamicAvatarSizeType.small:
        return 18.toHeight;
    }
  }
}

const sectionsStops = [
  0.05,
  0.65,
  0.9,
];
const minSpeed = 10;
const maxSpeed = 80;

class BotAvatar extends StatelessWidget {
  final int pace;
  final double size;

  const BotAvatar({
    super.key,
    required this.pace,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: lerpGradient(
          complexityColors.reversed.toList(),
          sectionsStops,
          pace / (maxSpeed - minSpeed),
        ),
      ),
      child: Icon(
        Icons.smart_toy_outlined,
        color: Colors.white,
        size: size * 0.7,
      ),
    );
  }
}

class BotIcon extends StatelessWidget {
  final int pace;
  final double size;

  const BotIcon({
    super.key,
    required this.pace,
    this.size = 44,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context);
    return Icon(
      Icons.smart_toy_outlined,
      size: size,
      color: lerpGradient(
        style.sectionColors,
        sectionsStops,
        pace / (maxSpeed - minSpeed),
      ),
    );
  }
}