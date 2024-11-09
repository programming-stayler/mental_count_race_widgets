import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FieldAligner extends StatelessWidget {
  final Widget child;

  const FieldAligner({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) return child;
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 2,
          child: child,
        ),
        const Spacer(),
      ],
    );
  }
}
