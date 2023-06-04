import 'package:flutter/material.dart';
import 'package:postsapp/core/presentation/theme/color_palette.dart';
import 'package:postsapp/core/presentation/theme/typography/_typography.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key, this.controller, this.onChanged});
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  UnderlineInputBorder get _border => const UnderlineInputBorder(
        borderSide: BorderSide(
          color: ColorPalette.green,
          width: 2,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        border: _border,
        enabledBorder: _border,
        errorStyle: AppTextStyle.error,
        focusedBorder: _border,
      ),
      onChanged: onChanged,
    );
  }
}
