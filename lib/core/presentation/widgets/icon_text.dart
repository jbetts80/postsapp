import 'package:flutter/material.dart';
import 'package:postsapp/core/presentation/theme/layout/_layout.dart';
import 'package:postsapp/core/presentation/theme/typography/text_style.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({required this.icon, required this.text, super.key});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 26),
        hSpace4,
        Text(text, style: AppTextStyle.small),
      ],
    );
  }
}
