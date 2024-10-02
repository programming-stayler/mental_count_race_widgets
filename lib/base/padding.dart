import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class AppPadding {
  AppPadding._();

  static Widget get horizontalPadding2 => SizedBox(width: 2.toWidth);

  static Widget get horizontalPadding4 => SizedBox(width: 4.toWidth);

  static Widget get horizontalPadding6 => SizedBox(width: 6.toWidth);

  static Widget get horizontalPadding8 => SizedBox(width: 8.toWidth);

  static Widget get horizontalPadding10 => SizedBox(width: 10.toWidth);

  static Widget get horizontalPadding12 => SizedBox(width: 12.toWidth);

  static Widget get horizontalPadding16 => SizedBox(width: 16.toWidth);

  static Widget get horizontalPadding20 => SizedBox(width: 20.toWidth);

  static Widget get horizontalPadding24 => SizedBox(width: 24.toWidth);

  static Widget get horizontalPadding32 => SizedBox(width: 32.toWidth);

  static Widget get horizontalPadding40 => SizedBox(width: 40.toWidth);

  static Widget get horizontalPadding44 => SizedBox(width: 44.toWidth);

  static Widget get verticalPadding1 => SizedBox(height: 1.toHeight);

  static Widget get verticalPadding2 => SizedBox(height: 2.toHeight);

  static Widget get verticalPadding4 => SizedBox(height: 4.toHeight);

  static Widget get verticalPadding6 => SizedBox(height: 6.toHeight);

  static Widget get verticalPadding8 => SizedBox(height: 8.toHeight);

  static Widget get verticalPadding10 => SizedBox(height: 10.toHeight);

  static Widget get verticalPadding12 => SizedBox(height: 12.toHeight);

  static Widget get verticalPadding14 => SizedBox(width: 14.toHeight);

  static Widget get verticalPadding16 => SizedBox(height: 16.toHeight);

  static Widget get verticalPadding20 => SizedBox(height: 20.toHeight);

  static Widget get verticalPadding22 => SizedBox(height: 22.toHeight);

  static Widget get verticalPadding24 => SizedBox(height: 24.toHeight);

  static Widget get verticalPadding32 => SizedBox(height: 32.toHeight);

  static Widget horizontalWrapper8({required Widget child}) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0.toWidth),
    child: child,
  );

  static Widget horizontalWrapper16({required Widget child}) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0.toWidth),
    child: child,
  );
}