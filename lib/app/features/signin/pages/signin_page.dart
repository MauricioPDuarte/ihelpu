import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ihelpu/app/core/theme/app_images.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_fonts.dart';
import '../../../core/widgets/custom_textformfield/custom_textformfield.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(right: 25, left: 25),
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 90),
              child: SvgPicture.asset(
                AppImages.logoSvg,
                height: 50,
              ),
            ),
            Form(
                child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: const CustomTextFormField(
                      hint: "E-mail", icon: Icons.mail_outline_outlined),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: const CustomTextFormField(
                    hint: "Senha",
                    icon: Icons.lock_outline,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(bottom: 25),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Esqueceu sua senha?",
                        style: AppFonts.textPrimary12,
                      )),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primary,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/tasks");
                    },
                    child: Text("ENTRAR", style: AppFonts.buttonText),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ainda nao possui uma conta?",
                          style: AppFonts.subtitleMediumGrey),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/signUp");
                          },
                          child: Text(
                            "Criar conta",
                            style: AppFonts.textPrimary14,
                          ))
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
