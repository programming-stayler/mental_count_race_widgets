import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

EdgeInsets defaultInputPadding = EdgeInsets.fromLTRB(
  12.toWidth,
  23.toHeight,
  12.toWidth,
  14.toHeight,
);

OutlineInputBorder _enabledBorder({
  required Color borderColor,
  double borderRadius = 4,
}) =>
    OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 2,
      ),
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
    );

InputBorder _errorBorder({
  required bool editMode,
  required Color errorColor,
  required Color hintColor,
  double borderRadius = 4,
}) =>
    editMode
        ? OutlineInputBorder(
            borderSide: BorderSide(color: errorColor),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          )
        : UnderlineInputBorder(
            borderSide: BorderSide(color: hintColor),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
            ),
          );

InputBorder _disabledBorder({
  required bool editMode,
  required double borderRadius,
  required Color borderColor,
}) =>
    editMode
        ? OutlineInputBorder(
            borderSide: BorderSide(color: borderColor.withOpacity(0.4)),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          )
        : UnderlineInputBorder(
            borderSide: BorderSide(color: borderColor.withOpacity(0.2)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
            ),
          );

// TextStyle _labelTextStyle(bool editMode) => editMode
//     ? _bodyTextStyle().copyWith(color: _borderColor)
//     : AppFonts.regularFont.copyWith(
//         fontWeight: FontWeight.normal,
//         color: _borderColor,
//       );

// TextStyle errorTextStyle(bool showErrorText) => AppFonts.regularFont.copyWith(
//       color: _errorColor,
//       fontSize: showErrorText ? 12.toFont : 0.1,
//     );

class AppInputDecoration extends InputDecoration {
  AppInputDecoration._({
    super.suffixText,
    super.labelText,
    super.hintText,
    super.errorText,
    super.prefixText,
    super.prefixStyle,
    super.suffixIcon,
    super.counterText,
    super.fillColor,
    super.hintStyle,
    int super.errorMaxLines = 1,
    bool super.filled = false,
    required Color hintColor,
    required Color errorColor,
    required Color borderColor,
    required Color focusedBorderColor,
    required double borderRadius,
    required TextStyle labelTextStyle,
    required TextStyle bodyTextStyle,
    required TextStyle errorTextStyle,
    bool showErrorText = false,
    bool showErrorBorder = false,
    bool editMode = true,
    EdgeInsets? contentPadding,
    bool? isCollapsed,
  }) : super(
          enabled: editMode,
          isCollapsed: isCollapsed ?? false,
          focusedBorder: showErrorBorder
              ? _errorBorder(
                  editMode: editMode,
                  errorColor: errorColor,
                  hintColor: hintColor,
                  borderRadius: borderRadius,
                )
              : _enabledBorder(
                  borderColor: focusedBorderColor,
                  borderRadius: borderRadius,
                ),
          enabledBorder: showErrorBorder
              ? _errorBorder(
                  editMode: editMode,
                  errorColor: errorColor,
                  hintColor: hintColor,
                  borderRadius: borderRadius,
                )
              : _enabledBorder(
                  borderColor: borderColor,
                  borderRadius: borderRadius,
                ),
          errorBorder: _errorBorder(
            editMode: editMode,
            errorColor: errorColor,
            hintColor: hintColor,
            borderRadius: borderRadius,
          ),
          focusedErrorBorder: _errorBorder(
            editMode: editMode,
            errorColor: errorColor,
            hintColor: hintColor,
            borderRadius: borderRadius,
          ),
          disabledBorder: _disabledBorder(
            editMode: editMode,
            borderColor: borderColor,
            borderRadius: borderRadius,
          ),
          labelStyle: labelTextStyle,
          errorStyle: errorTextStyle,
          alignLabelWithHint: true,
          contentPadding: contentPadding ??
              EdgeInsets.fromLTRB(
                  12.toWidth, 23.toHeight, 12.toWidth, 14.toHeight),
        );

  factory AppInputDecoration.outlineInput({
    String? suffixText,
    String? labelText,
    String? hintText,
    String? errorText,
    String? prefixText,
    TextStyle? prefixStyle,
    Widget? suffixIcon,
    String? counterText,
    int errorMaxLines = 1,
    bool showErrorText = true,
    bool showErrorBorder = false,
    EdgeInsets? contentPadding,
    bool? isCollapsed,
    TextStyle? hintStyle,
    Color? fillColor,
    required double borderRadius,
    required Color hintColor,
    required Color errorColor,
    required Color borderColor,
    required Color focusedBorderColor,
    required TextStyle labelTextStyle,
    required TextStyle bodyTextStyle,
    required TextStyle errorTextStyle,
  }) =>
      AppInputDecoration._(
        suffixText: suffixText,
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        prefixText: prefixText,
        prefixStyle: prefixStyle,
        suffixIcon: suffixIcon,
        counterText: counterText,
        errorMaxLines: errorMaxLines,
        showErrorText: showErrorText,
        showErrorBorder: showErrorBorder,
        contentPadding: contentPadding,
        filled: true,
        isCollapsed: isCollapsed,
        hintStyle: hintStyle,
        fillColor: fillColor,
        borderRadius: borderRadius,
        hintColor: hintColor,
        errorColor: errorColor,
        borderColor: borderColor,
        focusedBorderColor: focusedBorderColor,
        labelTextStyle: labelTextStyle,
        bodyTextStyle: bodyTextStyle,
        errorTextStyle: errorTextStyle,
      );

  factory AppInputDecoration.underlineInput({
    required String labelText,
    required String hintText,
    String? prefixText,
    TextStyle? prefixStyle,
    Widget? suffixIcon,
    required double borderRadius,
    required Color hintColor,
    required Color errorColor,
    required Color borderColor,
    required Color focusedBorderColor,
    required TextStyle labelTextStyle,
    required TextStyle bodyTextStyle,
    required TextStyle errorTextStyle,
  }) =>
      AppInputDecoration._(
        labelText: labelText,
        hintText: hintText,
        prefixText: prefixText,
        prefixStyle: prefixStyle,
        editMode: false,
        contentPadding: EdgeInsets.symmetric(vertical: 15.toHeight),
        suffixIcon: suffixIcon,
        showErrorText: true,
        borderRadius: borderRadius,
        hintColor: hintColor,
        errorColor: errorColor,
        borderColor: borderColor,
        focusedBorderColor: focusedBorderColor,
        labelTextStyle: labelTextStyle,
        bodyTextStyle: bodyTextStyle,
        errorTextStyle: errorTextStyle,
      );

  factory AppInputDecoration.dropdown({
    required String labelText,
    VoidCallback? onDonePressed,
    int errorMaxLines = 1,
    bool showErrorText = true,
    required Color hintColor,
    required Color errorColor,
    required Color borderColor,
    required Color focusedBorderColor,
    required TextStyle labelTextStyle,
    required TextStyle bodyTextStyle,
    required TextStyle errorTextStyle,
  }) =>
      AppInputDecoration._(
        borderRadius: 4,
        labelText: labelText,
        // filled: true,
        showErrorText: showErrorText,
        errorMaxLines: errorMaxLines,
        contentPadding: EdgeInsets.symmetric(vertical: 15.toHeight),
        suffixIcon: onDonePressed != null
            ? Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton(
                  // style: AppButtonStyle.circle,
                  onPressed: onDonePressed,
                  child: const Icon(Icons.done),
                ),
              )
            : null,
        hintColor: hintColor,
        errorColor: errorColor,
        borderColor: borderColor,
        focusedBorderColor: focusedBorderColor,
        labelTextStyle: labelTextStyle,
        bodyTextStyle: bodyTextStyle,
        errorTextStyle: errorTextStyle,
      );

  factory AppInputDecoration.clean({
    double borderRadius = 8,
    required Color hintColor,
    required Color errorColor,
    required Color focusedBorderColor,
    required TextStyle labelTextStyle,
    required TextStyle bodyTextStyle,
    required TextStyle errorTextStyle,
  }) =>
      AppInputDecoration._(
        borderColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        borderRadius: borderRadius,
        hintColor: hintColor,
        errorColor: errorColor,
        focusedBorderColor: focusedBorderColor,
        labelTextStyle: labelTextStyle,
        bodyTextStyle: bodyTextStyle,
        errorTextStyle: errorTextStyle,
      );
}
