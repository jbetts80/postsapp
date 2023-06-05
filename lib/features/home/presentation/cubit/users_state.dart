part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.usersLoaded({
    @Default(true) bool isLoading,
    @Default([]) List<User> users,
    @Default([]) List<User> filteredUsers,
    @Default('') String errorMessage,
  }) = _UsersState;
  factory UsersState.initial() => const _UsersState();
}
