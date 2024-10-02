import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class AppRoundButton extends StatelessWidget {
  final VoidCallback? onTap;
  final ContainerUIStyle? containerStyle;

  const AppRoundButton({
    super.key,
    this.onTap,
    this.containerStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
    );
  }
}

class AppActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final TextUIStyle? textStyle;
  final ContainerUIStyle? containerStyle;

  const AppActionButton({
    super.key,
    required this.text,
    this.onTap,
    this.textStyle,
    this.containerStyle,
  });

  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return InkWell(
      onTap: onTap,
      child: AppContainer.fromStyle(
        style: containerStyle ??
            ContainerUIStyle(
              padding: const EdgeInsetsUIStyle(
                left: 12,
                right: 12,
                top: 8,
                bottom: 8,
              ),
              decoration: globalStyle.actionButtonsStyle,
            ),
        child: AppText(
          text,
          uiStyle: textStyle ?? globalStyle.textStyle.regularFont.buttonTitle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
