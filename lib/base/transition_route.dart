import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppTransitionRoute extends GoRoute {
  AppTransitionRoute({
    required super.builder,
    required super.path,
  }) : super(
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: builder?.call(context, state) ?? const Placeholder(),
              transitionDuration: const Duration(milliseconds: 150),
              transitionsBuilder: (
                BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child,
              ) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOut).animate(
                    animation,
                  ),
                  child: child,
                );
              },
            );
          },
        );
}
