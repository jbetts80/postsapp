import 'package:flutter/material.dart';
import 'package:postsapp/core/presentation/theme/typography/_typography.dart';
import 'package:postsapp/core/presentation/widgets/icon_text.dart';
import 'package:postsapp/features/home/domain/entities/user.dart';

class AppUserInfo extends StatelessWidget {
  const AppUserInfo(this.user, {super.key});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(user.name, style: AppTextStyle.large),
        AppTextIcon(icon: Icons.phone, text: user.phone),
        AppTextIcon(icon: Icons.mail, text: user.email),
      ],
    );
  }
}
