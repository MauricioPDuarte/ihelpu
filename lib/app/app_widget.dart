import 'package:flutter/material.dart';
import 'package:ihelpu/app/features/signup/pages/signup_page.dart';

import 'core/theme/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const SignUpPage(),
    );
  }
}
