import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:postsapp/core/extensions/string.dart';
import 'package:postsapp/core/presentation/theme/color_palette.dart';
import 'package:postsapp/core/presentation/theme/layout/_layout.dart';
import 'package:postsapp/core/presentation/theme/typography/_typography.dart';
import 'package:postsapp/core/presentation/widgets/shimmer_list.dart';
import 'package:postsapp/core/presentation/widgets/text_field.dart';
import 'package:postsapp/core/presentation/widgets/user_card.dart';
import 'package:postsapp/features/home/presentation/cubit/users_cubit.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final nameControler = TextEditingController();

  @override
  void dispose() {
    nameControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(GetIt.I.get())..fetchUsers(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Prueba de Ingreso'.hardcoded),
        ),
        body: _UsersBody(nameControler: nameControler),
      ),
    );
  }
}

class _UsersBody extends StatelessWidget {
  const _UsersBody({required this.nameControler});
  final TextEditingController nameControler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: BlocConsumer<UsersCubit, UsersState>(
        listener: (_, state) => SnackBar(
          content: Text(state.errorMessage, style: AppTextStyle.small.copyWith(color: ColorPalette.white)),
          backgroundColor: ColorPalette.red,
        ),
        builder: (_, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: edgeInsetsH4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Buscar usuario'.hardcoded, style: AppTextStyle.tiny.copyWith(color: ColorPalette.green)),
                    AppTextField(
                      controller: nameControler,
                      onChanged: context.read<UsersCubit>().filterUsers,
                    ),
                  ],
                ),
              ),
              vSpace30,
              if (state.isLoading)
                const AppShimmerList()
              else
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (_, index) => AppUserCard(user: state.filteredUsers[index], showPost: (_) {}),
                    itemCount: state.filteredUsers.length,
                    separatorBuilder: (_, __) => vSpace30,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
