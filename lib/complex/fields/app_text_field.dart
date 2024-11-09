import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'decoration.dart';

class AppTextField extends StatelessWidget {
  final String? labelText;
  final GlobalKey<FormFieldState>? fieldKey;
  final String? hintText;
  final String? errorText;
  final int errorMaxLines;
  final String? initialValue;
  final String? Function(String)? validator;
  final TextEditingController? controller;
  final EdgeInsets? margin;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final bool expands;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final String? prefixText;
  final bool disabled;
  final bool? autofocus;
  final bool showCounter;
  final TextAlign? textAlign;
  final bool showErrorBorder;
  final int? minLines;
  final TextCapitalization textCapitalization;
  final Color? textColor;
  final bool? focusOnValidating;
  final bool editMode;
  final EdgeInsets? contentPadding;
  final bool? isCollapsed;
  final Color? borderColor;
  final List<String>? autofillHints;
  final double? fontSize;
  final bool showErrorText;
  final Color? fillColor;
  final double borderRadius;
  final Color? hintColor;
  final EdgeInsets? editMargin;
  final FontWeight? fontWeight;
  final InputDecoration? decoration;
  final TextDecoration? textDecoration;

  const AppTextField({
    super.key,
    this.errorMaxLines = 2,
    this.obscureText = false,
    this.expands = false,
    this.disabled = false,
    this.showCounter = false,
    this.showErrorBorder = false,
    this.textCapitalization = TextCapitalization.none,
    this.showErrorText = false,
    this.borderRadius = 4,
    this.editMode = true,
    this.labelText,
    this.fieldKey,
    this.hintText,
    this.errorText,
    this.initialValue,
    this.validator,
    this.controller,
    this.margin,
    this.textInputAction,
    this.keyboardType,
    this.maxLines = 1,
    this.maxLength,
    this.onChanged,
    this.inputFormatters,
    this.suffixIcon,
    this.focusNode,
    this.prefixText,
    this.autofocus,
    this.textAlign,
    this.minLines,
    this.textColor,
    this.focusOnValidating,
    this.contentPadding,
    this.isCollapsed,
    this.borderColor,
    this.autofillHints,
    this.fontSize,
    this.fillColor,
    this.hintColor,
    this.editMargin,
    this.fontWeight,
    this.decoration,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final defaultTextColor =
        disabled ? style.neutralColorHex.color : style.borderColorHex.color;
    final fontSize = min(this.fontSize ?? 16.toFont, 18.0);
    final textStyle = editMode
        ? style.textStyle.regularFont.textStyle.copyWith(
            fontSize: fontSize,
            fontWeight: fontWeight ?? FontWeight.normal,
            color: textColor ?? defaultTextColor,
            decoration: textDecoration,
            decorationThickness: textDecoration == null ? 0 : null,
          )
        : style.textStyle.regularFont.textStyle.copyWith(
            fontSize: fontSize,
            fontWeight: fontWeight ?? FontWeight.normal,
            color: textColor ?? Colors.black,
            decoration: textDecoration,
            decorationThickness: textDecoration == null ? 0 : null,
          );

    final prefixStyle = textStyle.copyWith(
      color: style.borderColorHex.color,
    );

    final nextEditMargin = editMargin ??
        EdgeInsets.symmetric(
          horizontal: min(16.toWidth, 18),
          vertical: min(8.toHeight, 10),
        );
    final nonEditMargin = EdgeInsets.only(
      left: min(16.toWidth, 18),
      right: min(16.toWidth, 18),
      bottom: min(8.toHeight, 10),
    );
    final modeMargin = editMode ? nextEditMargin : nonEditMargin;
    final decoration = this.decoration ??
        (editMode
                ? AppInputDecoration.outlineInput(
                    labelText: labelText,
                    hintText: hintText,
                    hintStyle: textStyle.copyWith(
                        color: hintColor ?? style.neutralColorHex.color),
                    errorText: errorText,
                    errorMaxLines: errorMaxLines,
                    suffixIcon: suffixIcon,
                    prefixText: prefixText,
                    prefixStyle: prefixStyle,
                    counterText: showCounter ? null : '',
                    showErrorBorder: showErrorBorder,
                    contentPadding: contentPadding,
                    isCollapsed: isCollapsed,
                    borderColor: borderColor ?? style.neutralColorHex.color,
                    showErrorText: showErrorText,
                    fillColor: fillColor ?? Colors.white,
                    borderRadius: borderRadius,
                    hintColor: style.neutralColorHex.color,
                    errorColor: style.negativeColorHex.color,
                    focusedBorderColor: style.actionColorHex.color,
                    labelTextStyle:
                        style.textStyle.lightFont.simple.textStyle,
                    bodyTextStyle: style.textStyle.regularFont.simple.textStyle,
                    errorTextStyle: style.textStyle.lightFont.hint.textStyle,
                  )
                : AppInputDecoration.underlineInput(
                    prefixStyle: prefixStyle,
                    prefixText: prefixText,
                    labelText: labelText ?? '',
                    hintText: hintText ?? '',
                    suffixIcon: suffixIcon,
                    borderRadius: borderRadius,
                    hintColor: style.neutralColorHex.color,
                    errorColor: style.negativeColorHex.color,
                    borderColor: Colors.transparent,
                    focusedBorderColor: style.actionColorHex.color,
                    labelTextStyle:
                        style.textStyle.lightFont.simple.textStyle,
                    bodyTextStyle: style.textStyle.regularFont.simple.textStyle,
                    errorTextStyle: style.textStyle.lightFont.hint.textStyle,
                  ))
            .copyWith(
          isDense: true,
        );
    return Container(
      margin: margin ?? modeMargin,
      child: editMode
          ? TextFormField(
              key: fieldKey,
              controller: controller,
              scrollPadding: EdgeInsets.only(bottom: 0.toHeight),
              autofillHints: autofillHints,
              initialValue: initialValue,
              autofocus: autofocus ?? false,
              expands: expands,
              readOnly: !editMode,
              textAlign: textAlign ?? TextAlign.start,
              textCapitalization: textCapitalization,
              //Don't change
              maxLines: obscureText ? 1 : (expands ? null : maxLines),
              minLines: minLines,
              onChanged: onChanged,
              focusNode: focusNode,
              enabled: editMode && !disabled,
              obscureText: obscureText,
              style: textStyle,
              textInputAction: textInputAction,
              maxLength: editMode ? maxLength : null,
              inputFormatters: inputFormatters,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: keyboardType,
              validator: (text) {
                if (validator != null) {
                  final message = validator?.call(text ?? '');
                  if (message != null) {
                    if (focusOnValidating ?? false) {
                      focusNode?.requestFocus();
                    }
                    return message;
                  }
                }
                return null;
              },
              decoration: decoration,
            )
          : InputDecorator(
              decoration: decoration,
              child: Text(
                controller?.text ?? initialValue ?? '',
                style: textStyle,
              ),
            ),
    );
  }
}
