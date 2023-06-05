import 'package:flutter/material.dart';
import 'package:postsapp/core/extensions/string.dart';
import 'package:postsapp/core/presentation/theme/layout/_layout.dart';
import 'package:postsapp/core/presentation/theme/typography/_typography.dart';
import 'package:postsapp/core/presentation/widgets/user_info.dart';
import 'package:postsapp/features/home/domain/entities/user.dart';

class AppUserCard extends StatelessWidget {
  const AppUserCard({required this.user, required this.showPost, super.key});
  final User user;
  final VoidCallback showPost;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppUserInfo(user),
            vSpace10,
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: showPost,
                  child: Text('VER PUBLICACIONES'.hardcoded, style: AppTextStyle.medium),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
