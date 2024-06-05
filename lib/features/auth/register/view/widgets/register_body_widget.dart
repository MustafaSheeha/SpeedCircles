
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../widgets/auth_container_widget.dart';
import '../../../widgets/auth_template_widget.dart';
import '../../../widgets/welcome_widget.dart';

class RegisterBodyWidget extends StatelessWidget {
  const RegisterBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AuthTemplateWidget(
      authTemplateBody: AuthContainerWidget(
        welcomeWidget: WelcomeWidget(
          title: AppStrings.createAccount,
          suTitle: AppStrings.exploreMore,
        ),
        formWidget: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
