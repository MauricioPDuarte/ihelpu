import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final IconData? icon;

  const CustomTextFormField({Key? key, required this.hint, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.stroke,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        hintText: hint,
        prefixIcon: Icon(
          icon,
          size: 22,
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 53,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 23),
      ),
    );
  }
}
