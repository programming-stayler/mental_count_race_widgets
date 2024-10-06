import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';

import 'animation.dart';

class AnimationList<T> extends StatefulWidget {
  final List<T> items;
  final Function()? onRefresh;
  final void Function()? onEndOfPage;
  final Widget Function(T, int) builder;
  final bool isPulling;
  final bool isLoading;
  final double padding;
  final double topOffset;
  final double bottomOffset;
  final bool gridMode;
  final ScrollController? controller;
  final bool resizeToAvoidBottomInset;

  const AnimationList({
    super.key,
    required this.items,
    required this.builder,
    this.controller,
    this.onRefresh,
    this.onEndOfPage,
    this.padding = 8,
    this.topOffset = 16,
    this.bottomOffset = 16,
    this.isPulling = false,
    this.isLoading = false,
    this.gridMode = false,
    this.resizeToAvoidBottomInset = false,
  });

  @override
  State<AnimationList> createState() => _AnimationListState();
}

class _AnimationListState<T> extends State<AnimationList<T>> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? ScrollController();
    controller.addListener(onEndReached);
  }

  @override
  void dispose() {
    controller.removeListener(onEndReached);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isPulling && widget.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    final refreshCallback = widget.onRefresh;
    final child = widget.items.isEmpty
        ? const SizedBox()
        : CustomScrollView(
      controller: controller,
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: widget.topOffset),
        ),
        if (widget.gridMode)
          _Grid<T>(
            builder: widget.builder,
            items: widget.items,
          )
        else
          _List<T>(
            builder: (model, index) {
              return Column(
                children: [
                  widget.builder(model, index),
                  SizedBox(height: widget.padding),
                ],
              );
            },
            items: widget.items,
          ),
        if (widget.isPulling)
          const _BottomProgressIndicator()
        else
          _BottomPadding(widget.bottomOffset),
        if (widget.resizeToAvoidBottomInset)
          _BottomPadding(context.viewInsets.bottom),
      ],
    );
    return Stack(
      children: [
        refreshCallback != null
            ? RefreshIndicator(
          onRefresh: () async {
            refreshCallback.call();
          },
          child: child,
        )
            : child,
      ],
    );
  }

  // UTILS ---------------------------------------------------------------------
  void onEndReached() {
    if (widget.isPulling) {
      return;
    }
    final endOfPageCallback = widget.onEndOfPage;
    final maxScrollExtent = controller.position.maxScrollExtent * 0.9;
    final extended = controller.position.pixels > maxScrollExtent;
    if (endOfPageCallback != null && extended) {
      endOfPageCallback();
    }
  }
}

class _Grid<T> extends StatelessWidget {
  final Widget Function(T, int) builder;
  final List<T> items;
  final Widget? leading;

  const _Grid({
    super.key,
    required this.builder,
    required this.items,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.toWidth,
          mainAxisSpacing: 8.toWidth,
          childAspectRatio: 1.5,
          mainAxisExtent: (context.screen.width - 48.toWidth) / 3,
        ),
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            final correctedIndex = leading != null ? index - 1 : index;
            return leading != null && index == 0
                ? leading
                : AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                position: index,
                child: FadeInAnimation(
                  position: index,
                  child: builder(items[correctedIndex], correctedIndex),
                ),
              ),
            );
          },
          childCount: leading != null ? items.length + 1 : items.length,
        ),
      ),
    );
  }
}

class _List<T> extends StatelessWidget {
  final Widget Function(T, int) builder;
  final List<T> items;

  const _List({
    super.key,
    required this.builder,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, index) => AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              position: index,
              child: FadeInAnimation(
                position: index,
                child: builder(items[index], index),
              ),
            ),
          ),
          childCount: items.length,
        ),
      ),
    );
  }
}

class _BottomProgressIndicator extends StatelessWidget {
  const _BottomProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class _BottomPadding extends StatelessWidget {
  final double paddingOffset;

  const _BottomPadding(this.paddingOffset);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: paddingOffset,
      ),
    );
  }
}
