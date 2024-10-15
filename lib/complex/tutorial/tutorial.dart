import 'package:flutter/material.dart';
import 'package:mental_count_race_widgets/widgets.dart';
import 'package:pythagoras_match/pythagoras_match.dart';

class TutorialTitleSection extends StatelessWidget {
  final String title;
  final TextUIStyle? textStyle;

  const TutorialTitleSection({
    super.key,
    required this.title,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return AppText(
      title,
      uiStyle: textStyle ?? style.textStyle.boldFont.numberTitle,
    );
  }
}

class TutorialInfoSection extends StatelessWidget {
  final User author;
  final DateTime createdAt;
  final int minsToRead; // minutes to read
  final TextUIStyle? authorTextStyle;
  final TextUIStyle? createdAtTextStyle;
  final TextUIStyle? minsToReadTextStyle;

  const TutorialInfoSection({
    super.key,
    required this.author,
    required this.createdAt,
    required this.minsToRead,
    this.authorTextStyle,
    this.createdAtTextStyle,
    this.minsToReadTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Row(
      children: [
        Icon(
          Icons.edit,
          size: 30.toWidth,
          color: style.actionColorHex.color,
        ),
        AppPadding.horizontalPadding4,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppText(
                author.nickname,
                uiStyle: authorTextStyle ?? style.textStyle.regularFont.simple,
              ),
              Wrap(
                children: [
                  AppText(
                    createdAt.toString(),
                    uiStyle: createdAtTextStyle ??
                        style.textStyle.lightFont.description.copyWith(
                          colorHex: style.neutralColorHex,
                        ),
                  ),
                  AppPadding.horizontalPadding2,
                  AppText(
                    '$minsToRead mins read',
                    uiStyle: minsToReadTextStyle ??
                        style.textStyle.lightFont.description,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TutorialUsersFeedbackSection extends StatelessWidget {
  final int likes;
  final int dislikes;
  final int commentsCount;
  final TextUIStyle? textStyle;
  final VoidCallback? onLikeTap;
  final VoidCallback? onDislikeTap;
  final VoidCallback? onCommentTap;
  final VoidCallback? onShareTap;

  const TutorialUsersFeedbackSection({
    super.key,
    required this.likes,
    required this.dislikes,
    required this.commentsCount,
    this.textStyle,
    this.onLikeTap,
    this.onDislikeTap,
    this.onCommentTap,
    this.onShareTap,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Column(
      children: [
        const Divider(),
        AppPadding.verticalPadding2,
        Row(
          children: [
            AppPadding.horizontalPadding8,
            Icon(
              Icons.thumb_up_outlined,
              size: 22,
              color: style.neutralColorHex.color,
            ),
            AppPadding.horizontalPadding4,
            AppText(
              '$likes',
              uiStyle: (textStyle ?? style.textStyle.regularFont.simple)
                  .copyWith(colorHex: style.positiveColorHex),
            ),
            AppPadding.horizontalPadding20,
            Icon(
              Icons.thumb_down_outlined,
              size: 22,
              color: style.neutralColorHex.color,
            ),
            AppPadding.horizontalPadding4,
            AppText(
              '$dislikes',
              uiStyle:
                  (textStyle ?? style.textStyle.regularFont.simple).copyWith(
                colorHex: style.negativeColorHex,
              ),
            ),
            AppPadding.horizontalPadding20,
            Icon(
              Icons.mode_comment_outlined,
              size: 22,
              color: style.neutralColorHex.color,
            ),
            AppPadding.horizontalPadding4,
            AppText(
              '$commentsCount',
              uiStyle:
                  (textStyle ?? style.textStyle.regularFont.simple).copyWith(
                colorHex: style.neutralColorHex,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.share_outlined,
              size: 22,
              color: style.neutralColorHex.color,
            ),
            AppPadding.horizontalPadding8,
          ],
        ),
        AppPadding.verticalPadding2,
        const Divider(),
      ],
    );
  }
}

class TutorialTextSection extends StatelessWidget {
  final TextSectionModel model;
  final TextUIStyle? textStyle;

  const TutorialTextSection({
    super.key,
    required this.model,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return AppText(
      model.text,
      textAlign: TextAlign.justify,
      uiStyle: textStyle ?? style.textStyle.lightFont,
    );
  }
}

class TutorialSubHeaderSection extends StatelessWidget {
  final SubHeaderSectionModel model;
  final TextUIStyle? textStyle;

  const TutorialSubHeaderSection({
    super.key,
    required this.model,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return AppText(
      model.text,
      textAlign: TextAlign.justify,
      uiStyle: textStyle ?? style.textStyle.semiBoldFont.simple,
    );
  }
}

class TutorialSpotlightSection extends StatelessWidget {
  final SpotlightSectionModel model;
  final TextUIStyle? textStyle;

  const TutorialSpotlightSection({
    super.key,
    required this.model,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppPadding.verticalPadding24,
        AppText(
          model.text,
          textAlign: TextAlign.center,
          uiStyle: textStyle ?? style.textStyle.semiBoldFont.numberTitle,
        ),
        AppPadding.verticalPadding24,
      ],
    );
  }
}

class TutorialLinkSection extends StatelessWidget {
  final LinkSectionModel model;

  const TutorialLinkSection({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    final Widget child;
    switch (model.type) {
      case TutorialLinkType.image:
        child = Image.network(
          model.link,
          fit: BoxFit.cover,
        );
      case TutorialLinkType.video:
        child = const Placeholder();
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.toWidth),
      child: SizedBox(
        height: 180.toHeight,
        child: child,
      ),
    );
  }
}

class TutorialBulletListSection extends StatelessWidget {
  final BulletListSectionModel model;
  final TextUIStyle? titleTextStyle;
  final TextUIStyle? sectionTextStyle;

  const TutorialBulletListSection({
    super.key,
    required this.model,
    this.titleTextStyle,
    this.sectionTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppGlobalStyle.of(context).style;
    final sections = <Widget>[];
    for (final section in model.sections) {
      section.mapOrNull(
        text: (section) {
          sections.addAll([
            AppPadding.verticalPadding8,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppPadding.horizontalPadding8,
                Padding(
                  padding: EdgeInsets.only(top: 2.0.toWidth),
                  child: AppText(
                    '*',
                    uiStyle: style.textStyle.boldFont.simple,
                  ),
                ),
                AppPadding.horizontalPadding4,
                Expanded(
                  child: AppText(
                    section.text,
                    textAlign: TextAlign.justify,
                    maxLines: 10,
                  ),
                ),
                AppPadding.horizontalPadding8,
              ],
            ),
          ]);
        },
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TutorialSubHeaderSection(
          model: model.title,
        ),
        ...sections,
      ],
    );
  }
}

class TutorialContentSection extends StatelessWidget {
  final List<TutorialContentSectionModel> content;

  const TutorialContentSection({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (final model in content) {
      model.map(
        text: (model) {
          children.addAll([
            TutorialTextSection(model: model),
            AppPadding.verticalPadding12,
          ]);
        },
        subHeader: (model) {
          children.addAll([
            AppPadding.verticalPadding12,
            TutorialSubHeaderSection(model: model),
            AppPadding.verticalPadding4,
          ]);
        },
        spotlight: (model) {
          children.addAll([
            TutorialSpotlightSection(model: model),
            AppPadding.verticalPadding24,
          ]);
        },
        link: (model) {
          children.addAll([
            TutorialLinkSection(model: model),
            AppPadding.verticalPadding24,
          ]);
        },
        bulletList: (model) {
          children.addAll([
            TutorialBulletListSection(model: model),
            AppPadding.verticalPadding20,
          ]);
        },
      );
    }
    return AnimatedColumn(
      children: children,
    );
  }
}
