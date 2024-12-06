import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

Future<T?> showAppModalSheet<T>(
  BuildContext context,
  Widget Function(BuildContext context) builder, {
  BoxConstraints? constraints,
}) async {
  if (kIsWeb) {
    return showGeneralDialog<T>(
      context: context,
      pageBuilder: (BuildContext context, _, __) => Dialog(
        clipBehavior: Clip.hardEdge,
        shape: buildAppShapeBorder(context),
        child: Container(
          constraints: constraints,
          child: builder(context),
        ),
      ),
    );
  } else {
    return showModalBottomSheet<T>(
      context: context,
      clipBehavior: Clip.hardEdge,
      shape: buildAppShapeBorder(context),
      builder: builder,
    );
  }
}
