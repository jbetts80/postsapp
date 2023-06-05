import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:postsapp/core/extensions/string.dart';
import 'package:postsapp/core/presentation/theme/color_palette.dart';
import 'package:postsapp/core/presentation/theme/layout/_layout.dart';
import 'package:postsapp/core/presentation/theme/typography/_typography.dart';
import 'package:postsapp/core/presentation/widgets/shimmer_list.dart';
import 'package:postsapp/core/presentation/widgets/user_info.dart';
import 'package:postsapp/features/home/domain/entities/_entities.dart';
import 'package:postsapp/features/home/presentation/cubit/users_cubit.dart';

class UserPostsScreen extends StatelessWidget {
  const UserPostsScreen(this.user, {super.key});
  final User user;

  static const String route = 'posts';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(GetIt.I.get())..fetchUserPosts(user.id),
      child: Scaffold(
        appBar: AppBar(title: Text('Posts'.hardcoded)),
        body: SafeArea(
          child: Padding(
            padding: edgeInsetsA26,
            child: Column(
              children: [
                AppUserInfo(user),
                vSpace30,
                const _UserPosts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UserPosts extends StatelessWidget {
  const _UserPosts();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersCubit, UsersState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const AppShimmerList();
        }
        return Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) {
              final post = state.posts[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: ColorPalette.green,
                    padding: edgeInsetsA16,
                    child: Text(
                      post.title,
                      style: AppTextStyle.small.copyWith(color: ColorPalette.white, fontWeight: AppFontWeight.medium),
                    ),
                  ),
                  Container(
                    padding: edgeInsetsA16,
                    decoration: BoxDecoration(border: Border.all(color: ColorPalette.green, width: 2)),
                    child: Text(post.body, style: AppTextStyle.small),
                  ),
                ],
              );
            },
            itemCount: state.posts.length,
            separatorBuilder: (_, __) => vSpace30,
          ),
        );
      },
    );
  }
}
