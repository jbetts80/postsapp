import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:postsapp/core/extensions/string.dart';
import 'package:postsapp/features/home/domain/entities/_entities.dart';
import 'package:postsapp/features/home/domain/repositories/user_repository.dart';

part 'users_cubit.freezed.dart';
part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit(this._userRepository) : super(const UsersState.initial());
  final UserRepository _userRepository;

  Future<void> fetchUsers() async {
    try {
      emit(const UsersState.loading());
      final users = await _userRepository.fetchUsers();
      emit(UsersState.usersLoaded(users: users, filteredUsers: users));
    } catch (exception) {
      emit(UsersState.failed('Error when fetching the users'.hardcoded));
    }
  }

  void filterUsers(String query, List<User> currentUsers) {
    try {
      emit(const UsersState.loading());
      final filteredUsers = currentUsers.where((user) => user.name.toLowerCase().contains(query.toLowerCase())).toList();
      if (filteredUsers.isEmpty) {
        emit(const UsersState.emptyUsersFiltered());
      } else {
        emit(UsersState.usersLoaded(users: currentUsers, filteredUsers: filteredUsers));
      }
    } catch (exception) {
      emit(UsersState.failed('Error when filtering the users'.hardcoded));
    }
  }
}
