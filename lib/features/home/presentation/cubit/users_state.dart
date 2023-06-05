part of 'users_cubit.dart';

enum Status { loading, requestPermission, success, error }

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    @Default([]) List<User> users,
    @Default([]) List<User> filteredUsers,
    @Default([]) List<Post> posts,
    @Default('') String errorMessage,
    @Default(Status.loading) Status status,
  }) = _UsersState;
  factory UsersState.initial() => const _UsersState();
}
