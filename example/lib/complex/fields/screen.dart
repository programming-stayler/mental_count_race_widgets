import 'package:example/complex/screen.dart';
import 'package:example/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_count_race_widgets/widgets.dart';

class FieldsGuideScreen extends StatefulWidget {
  static const route = '/fields_guide';

  const FieldsGuideScreen({super.key});

  @override
  State<FieldsGuideScreen> createState() => _FieldsGuideScreenState();

  static GoRoute buildRoute() {
    return AppTransitionRoute(
      path: FieldsGuideScreen.route,
      builder: (context, state) {
        return const FieldsGuideScreen();
      },
    );
  }
}

class _FieldsGuideScreenState extends State<FieldsGuideScreen> {
  KeyboardSettings settings = const KeyboardSettings();
  var canShowPassword = false;
  var switchValue = false;

  @override
  Widget build(BuildContext context) {
    final globalStyle = AppGlobalStyle.of(context).style;
    return AppSheetScaffold(
      topChildren: [
        WebAppBar(
          head: kIsWeb
              ? buildAppBarHead(context)
              : buildBackButton(() => context.go(ComplexGuideScreen.route)),
          title: AppText(
            'Fields Guide',
            uiStyle: globalStyle.textStyle.regularFont.tileTitle,
          ),
        ),
      ],
      bodyChildren: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppPadding.verticalPadding16,
                AppPadding.horizontalWrapper16(
                  child: const FieldAligner(
                    child: AppTextField(
                      labelText: 'Email',
                      autofillHints: [AutofillHints.email],
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                AppPadding.horizontalWrapper16(
                  child: const FieldAligner(
                    child: AppTextField(
                      labelText: 'Username',
                    ),
                  ),
                ),
                AppPadding.horizontalWrapper16(
                  child: FieldAligner(
                    child: AppTextField(
                      labelText: 'Password',
                      obscureText: !canShowPassword,
                      suffixIcon: IconButton(
                        icon: Icon(!canShowPassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () => setState(() {
                          canShowPassword = !canShowPassword;
                        }),
                      ),
                    ),
                  ),
                ),
                AppPadding.verticalPadding16,
                AppPadding.horizontalWrapper16(
                  child: FieldAligner(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              AppText(
                                'Switch title - short but bigger',
                                uiStyle: globalStyle.textStyle.regularFont.simple,
                              ),
                              AppText(
                                'Switch description - much more longer but thinner',
                                uiStyle:
                                    globalStyle.textStyle.lightFont.description,
                              ),
                            ],
                          ),
                        ),
                        AppSwitch(
                          value: switchValue,
                          onChanged: (value) => setState(
                            () => switchValue = value,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
