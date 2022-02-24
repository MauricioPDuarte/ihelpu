import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ihelpu/app/core/widgets/custom_button/custom_button.dart';
import 'package:ihelpu/app/core/widgets/custom_textformfield/custom_textformfield.dart';

import '../../../core/theme/app_fonts.dart';
import '../../../core/theme/app_images.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 25, right: 25),
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 60),
              child: SvgPicture.asset(
                AppImages.logoSvg,
                height: 50,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const CustomTextFormField(
                  hint: "Nome", icon: Icons.person_add_alt),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const CustomTextFormField(
                  hint: "E-mail", icon: Icons.email_outlined),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const CustomTextFormField(
                  hint: "Senha", icon: Icons.email_outlined),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: const CustomTextFormField(
                  hint: "Confirmar senha", icon: Icons.email_outlined),
            ),
            Container(
              child: CustomButton(
                text: "CADASTRAR",
                onPressed: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ja possui uma conta?",
                      style: AppFonts.subtitleMediumGrey),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/signIn");
                      },
                      child: Text(
                        "Fazer login",
                        style: AppFonts.textPrimary14,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
