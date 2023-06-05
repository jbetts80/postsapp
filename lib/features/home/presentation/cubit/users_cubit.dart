import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:postsapp/core/extensions/string.dart';
import 'package:postsapp/features/home/domain/entities/_entities.dart';
import 'package:postsapp/features/home/domain/repositories/user_repository.dart';

part 'users_cubit.freezed.dart';
part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit(this._userRepository) : super(UsersState.initial());
  final UserRepository _userRepository;

  Future<void> fetchUsers() async {
    try {
      final users = await _userRepository.fetchUsers();
      emit(state.copyWith(isLoading: false, users: users, filteredUsers: users));
    } catch (exception) {
      emit(state.copyWith(isLoading: false, errorMessage: 'Error when fetching the users'.hardcoded));
    }
  }

  void filterUsers(String query) {
    try {
      final filteredUsers = state.users.where((user) => user.name.toLowerCase().contains(query.toLowerCase())).toList();
      emit(state.copyWith(isLoading: false, filteredUsers: filteredUsers));
    } catch (exception) {
      emit(state.copyWith(isLoading: false, errorMessage: 'Error when filtering the users'.hardcoded));
    }
  }
}
