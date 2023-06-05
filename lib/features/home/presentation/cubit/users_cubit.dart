import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:postsapp/core/extensions/string.dart';
import 'package:postsapp/features/home/domain/entities/_entities.dart';
import 'package:postsapp/features/home/domain/repositories/local_storage_repository.dart';
import 'package:postsapp/features/home/domain/repositories/user_repository.dart';

part 'users_cubit.freezed.dart';
part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit(this._userRepository, this._localStorageRepository) : super(UsersState.initial());
  final UserRepository _userRepository;
  final LocalStorageRepository _localStorageRepository;

  Future<void> fetchUsers() async {
    try {
      final permissionGranted = await storagePermissionGranted();
      if (permissionGranted) {
        var users = await _localStorageRepository.init();
        if (users.isEmpty) {
          users = await _userRepository.fetchUsers();
          await _localStorageRepository.saveUsers(users);
        }
        emit(state.copyWith(status: Status.success, users: users, filteredUsers: users));
      } else {
        emit(state.copyWith(status: Status.requestPermission));
      }
    } catch (exception) {
      emit(state.copyWith(status: Status.error, errorMessage: 'Error when fetching the users'.hardcoded));
    }
  }

  void filterUsers(String query) {
    try {
      final filteredUsers = state.users.where((user) => user.name.toLowerCase().contains(query.toLowerCase())).toList();
      emit(state.copyWith(status: Status.success, filteredUsers: filteredUsers));
    } catch (exception) {
      emit(state.copyWith(status: Status.error, errorMessage: 'Error when filtering the users'.hardcoded));
    }
  }

  Future<void> fetchUserPosts(int userId) async {
    try {
      final posts = await _userRepository.fetchUserPosts(userId);
      emit(state.copyWith(status: Status.success, posts: posts));
    } catch (exception) {
      emit(state.copyWith(status: Status.error, errorMessage: 'Error when fetching the user [$userId] posts'.hardcoded));
    }
  }

  Future<bool> storagePermissionGranted() async {
    final status = await Permission.storage.request();
    switch (status) {
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.limited:
      case PermissionStatus.permanentlyDenied:
        return requestStoragePermission();
    }
  }

  Future<bool> requestStoragePermission() async {
    await openAppSettings();
    return Permission.storage.isGranted;
  }
}
