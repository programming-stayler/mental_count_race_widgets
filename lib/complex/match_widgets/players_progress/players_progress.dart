import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

import 'player_progress.dart';

class PlayersProgress extends StatefulWidget {
  final List<PlayerResult> results;
  final User? currentUser;

  const PlayersProgress({
    super.key,
    required this.results,
    this.currentUser,
  });

  @override
  State<PlayersProgress> createState() => _PlayersProgressState();
}

class _PlayersProgressState extends State<PlayersProgress> {
  static const cMaxSeparateProgresses = 4;

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final children = <Widget>[];
    final results = List<PlayerResult>.from(widget.results);
    if (results.length > cMaxSeparateProgresses) {
      results.sort((r1, r2) => r2.progress.compareTo(r1.progress));
      var i = 0;
      while (i < cMaxSeparateProgresses - 1) {
        final r = results[i];
        children.addAll([
          AppPadding.verticalPadding8,
          AppPadding.horizontalWrapper16(
            child: PlayerProgress(
              value: r.progress,
              user: r.user,
              strokeColor: style.actionColorHex.color,
              desaturate: widget.currentUser != null &&
                  r.user.userId != widget.currentUser?.userId,
              valueWidget: _ProgressText(
                value: r.correctValue ?? 0,
                total: r.totalValue ?? 0,
              ),
            ),
          ),
        ]);
        i++;
      }
      final stackChildren = <Widget>[];
      while (i < results.length) {
        final r = results[i];
        stackChildren.add(
          AppPadding.horizontalWrapper16(
            child: PlayerProgress(
              value: r.progress,
              user: r.user,
              showUserName: false,
              strokeColor: style.actionColorHex.color,
              desaturate: widget.currentUser != null &&
                  r.user.userId != widget.currentUser?.userId,
              valueWidget: SizedBox(
                width: 64.toWidth,
              ),
            ),
          ),
        );
        i++;
      }
      children.addAll([
        AppPadding.verticalPadding8,
        Stack(children: stackChildren),
      ]);
    } else {
      for (var r in widget.results) {
        children.addAll([
          AppPadding.verticalPadding8,
          AppPadding.horizontalWrapper16(
            child: PlayerProgress(
              value: r.progress,
              user: r.user,
              strokeColor: style.actionColorHex.color,
              desaturate: widget.currentUser != null &&
                  r.user.userId != widget.currentUser?.userId,
              valueWidget: _ProgressText(
                value: r.correctValue ?? 0,
                total: r.totalValue ?? 0,
              ),
            ),
          ),
        ]);
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }
}

class _ProgressText extends StatelessWidget {
  final int value;
  final int total;

  const _ProgressText({
    required this.value,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppPadding.horizontalPadding2,
        AppText(
          value.toString(),
          uiStyle: style.textStyle.semiBoldFont.buttonTitle.copyWith(
            colorHex: style.positiveColorHex,
          ),
        ),
        AppPadding.horizontalPadding2,
        Container(
          constraints: BoxConstraints(minWidth: min(30.toWidth, 38)),
          child: AppText(
            ' / $total',
            uiStyle: style.textStyle.regularFont.subtitle.copyWith(
              colorHex: style.neutralColorHex,
            ),
          ),
        ),
      ],
    );
  }
}
