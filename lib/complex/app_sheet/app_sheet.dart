import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class AppSheet extends StatefulWidget {
  final AppSheetType type;
  final List<Widget> children;
  final AnimationController? controller;

  const AppSheet({
    super.key,
    required this.type,
    required this.children,
    this.controller,
  });

  @override
  State<AppSheet> createState() => _AppSheetState();
}

class _AppSheetState extends State<AppSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    late double begin;
    late BorderUIStyle? border;
    late BorderRadiusUIStyle? borderRadius;
    final style = AppGlobalStyle.of(context).style;
    switch (widget.type) {
      case AppSheetType.fromTop:
        begin = -context.screen.height;
        border = style.appSheetStyle.border?.copyWith(
          top: null,
        );
        borderRadius = style.appSheetStyle.borderRadius?.mapOrNull(
          circular: (circular) => BorderRadiusUIStyle.only(
            bottomLeft: circular.radius,
            bottomRight: circular.radius,
          ),
        );
        break;
      case AppSheetType.fromBottom:
        begin = context.screen.height;
        border = style.appSheetStyle.border?.copyWith(
          bottom: null,
        );

        borderRadius = style.appSheetStyle.borderRadius?.mapOrNull(
          circular: (circular) => BorderRadiusUIStyle.only(
            topLeft: circular.radius,
            topRight: circular.radius,
          ),
        );
        break;
    }
    return AppContainer.fromStyle(
      style: ContainerUIStyle(
        decoration: style.appSheetStyle.copyWith(
          borderRadius: borderRadius,
          border: border,
          boxShadow: [],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.type == AppSheetType.fromTop)
            SizedBox(height: context.padding.top),
          ...widget.children,
          if (widget.type == AppSheetType.fromBottom)
            SizedBox(height: context.padding.bottom),
        ],
      ),
    )
        .animate(
          controller: controller,
          autoPlay: widget.controller == null,
        )
        .moveY(
          begin: begin,
          end: 0,
          curve: Curves.decelerate,
          duration: 350.ms,
          delay: 150.ms,
        );
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      controller.dispose();
    }
    super.dispose();
  }
}

enum AppSheetType {
  fromTop,
  fromBottom,
}

class AppSheetScaffold extends StatefulWidget {
  final List<Widget> topChildren;
  final List<Widget> bodyChildren;
  final List<Widget> bottomChildren;
  final AnimationController? controller;

  const AppSheetScaffold({
    super.key,
    required this.topChildren,
    this.bodyChildren = const [],
    this.bottomChildren = const [],
    this.controller,
  });

  @override
  State<AppSheetScaffold> createState() => _AppSheetScaffoldState();
}

class _AppSheetScaffoldState extends State<AppSheetScaffold>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  var showBody = false;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ??
        AnimationController(
          vsync: this,
          duration: 350.milliseconds,
        );
    if (widget.controller == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller
            .forward(
              from: 0.0,
            )
            .then(
              (value) => setState(() => showBody = true),
            );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BGWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppSheet(
              type: AppSheetType.fromTop,
              controller: widget.controller,
              children: widget.topChildren,
            ),
            Expanded(
              child: AnimatedOpacity(
                opacity: showBody ? 1 : 0,
                duration: 150.milliseconds,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.bodyChildren,
                ),
              ),
            ),
            if (!showBody) const Spacer(),
            if (widget.bottomChildren.isNotEmpty)
              AppSheet(
                type: AppSheetType.fromBottom,
                controller: widget.controller,
                children: widget.bottomChildren,
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class AnimatedAppSheetScaffold extends StatefulWidget {
  final List<Widget> topChildren;
  final List<Widget> bodyChildren;
  final List<Widget> bottomChildren;
  final AnimationController? controller;

  const AnimatedAppSheetScaffold({
    super.key,
    required this.topChildren,
    required this.bodyChildren,
    this.bottomChildren = const [],
    this.controller,
  });

  @override
  State<AnimatedAppSheetScaffold> createState() =>
      _AnimatedAppSheetScaffoldState();
}

class _AnimatedAppSheetScaffoldState extends State<AnimatedAppSheetScaffold>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  var showBody = false;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ??
        AnimationController(
          vsync: this,
          duration: 350.milliseconds,
        );
    if (widget.controller == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller
            .forward(
              from: 0.0,
            )
            .then(
              (value) => setState(() => showBody = true),
            );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BGWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppSheet(
              type: AppSheetType.fromTop,
              controller: widget.controller,
              children: widget.topChildren,
            ),
            if (showBody)
              AnimatedColumn(
                key: GlobalKey(),
                duration: 650.milliseconds,
                children: widget.bodyChildren,
              ),
            if (!showBody) const Spacer(),
            if (widget.bottomChildren.isNotEmpty)
              AppSheet(
                type: AppSheetType.fromBottom,
                controller: widget.controller,
                children: widget.bottomChildren,
              ),
          ],
        ),
      ),
    );
  }
}

class AppSheetBar extends StatelessWidget {
  final Widget title;
  final Widget? tail;
  final VoidCallback? onTap;

  const AppSheetBar({
    super.key,
    required this.title,
    this.onTap,
    this.tail,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, size: 24.toWidth),
          onPressed: onTap ?? Navigator.of(context).pop,
        ),
        const Spacer(),
        title,
        const Spacer(),
        if (tail != null) tail! else AppPadding.horizontalPadding24,
      ],
    );
  }
}
