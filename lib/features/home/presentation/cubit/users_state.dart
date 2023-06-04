part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loading() = Loading;
  const factory UsersState.usersLoaded({
    @Default([]) List<User> users,
    @Default([]) List<User> filteredUsers,
  }) = UsersLoaded;
  const factory UsersState.emptyUsersFiltered() = EmptyUsersFiltered;
  const factory UsersState.userPostsLoaded() = UserPostsLoaded;
  const factory UsersState.failed(String message) = Failed;
}
