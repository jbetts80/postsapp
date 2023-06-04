// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> filteredUsers)
        usersLoaded,
    required TResult Function() emptyUsersFiltered,
    required TResult Function() userPostsLoaded,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult? Function()? emptyUsersFiltered,
    TResult? Function()? userPostsLoaded,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult Function()? emptyUsersFiltered,
    TResult Function()? userPostsLoaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(EmptyUsersFiltered value) emptyUsersFiltered,
    required TResult Function(UserPostsLoaded value) userPostsLoaded,
    required TResult Function(Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult? Function(UserPostsLoaded value)? userPostsLoaded,
    TResult? Function(Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult Function(UserPostsLoaded value)? userPostsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UsersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> filteredUsers)
        usersLoaded,
    required TResult Function() emptyUsersFiltered,
    required TResult Function() userPostsLoaded,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult? Function()? emptyUsersFiltered,
    TResult? Function()? userPostsLoaded,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult Function()? emptyUsersFiltered,
    TResult Function()? userPostsLoaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(EmptyUsersFiltered value) emptyUsersFiltered,
    required TResult Function(UserPostsLoaded value) userPostsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult? Function(UserPostsLoaded value)? userPostsLoaded,
    TResult? Function(Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult Function(UserPostsLoaded value)? userPostsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UsersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'UsersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> filteredUsers)
        usersLoaded,
    required TResult Function() emptyUsersFiltered,
    required TResult Function() userPostsLoaded,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult? Function()? emptyUsersFiltered,
    TResult? Function()? userPostsLoaded,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult Function()? emptyUsersFiltered,
    TResult Function()? userPostsLoaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(EmptyUsersFiltered value) emptyUsersFiltered,
    required TResult Function(UserPostsLoaded value) userPostsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult? Function(UserPostsLoaded value)? userPostsLoaded,
    TResult? Function(Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult Function(UserPostsLoaded value)? userPostsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UsersState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$UsersLoadedCopyWith<$Res> {
  factory _$$UsersLoadedCopyWith(
          _$UsersLoaded value, $Res Function(_$UsersLoaded) then) =
      __$$UsersLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users, List<User> filteredUsers});
}

/// @nodoc
class __$$UsersLoadedCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersLoaded>
    implements _$$UsersLoadedCopyWith<$Res> {
  __$$UsersLoadedCopyWithImpl(
      _$UsersLoaded _value, $Res Function(_$UsersLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? filteredUsers = null,
  }) {
    return _then(_$UsersLoaded(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      filteredUsers: null == filteredUsers
          ? _value._filteredUsers
          : filteredUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$UsersLoaded implements UsersLoaded {
  const _$UsersLoaded(
      {final List<User> users = const [],
      final List<User> filteredUsers = const []})
      : _users = users,
        _filteredUsers = filteredUsers;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<User> _filteredUsers;
  @override
  @JsonKey()
  List<User> get filteredUsers {
    if (_filteredUsers is EqualUnmodifiableListView) return _filteredUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredUsers);
  }

  @override
  String toString() {
    return 'UsersState.usersLoaded(users: $users, filteredUsers: $filteredUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersLoaded &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._filteredUsers, _filteredUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_filteredUsers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersLoadedCopyWith<_$UsersLoaded> get copyWith =>
      __$$UsersLoadedCopyWithImpl<_$UsersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> filteredUsers)
        usersLoaded,
    required TResult Function() emptyUsersFiltered,
    required TResult Function() userPostsLoaded,
    required TResult Function(String message) failed,
  }) {
    return usersLoaded(users, filteredUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult? Function()? emptyUsersFiltered,
    TResult? Function()? userPostsLoaded,
    TResult? Function(String message)? failed,
  }) {
    return usersLoaded?.call(users, filteredUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult Function()? emptyUsersFiltered,
    TResult Function()? userPostsLoaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(users, filteredUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(EmptyUsersFiltered value) emptyUsersFiltered,
    required TResult Function(UserPostsLoaded value) userPostsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return usersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult? Function(UserPostsLoaded value)? userPostsLoaded,
    TResult? Function(Failed value)? failed,
  }) {
    return usersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult Function(UserPostsLoaded value)? userPostsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(this);
    }
    return orElse();
  }
}

abstract class UsersLoaded implements UsersState {
  const factory UsersLoaded(
      {final List<User> users, final List<User> filteredUsers}) = _$UsersLoaded;

  List<User> get users;
  List<User> get filteredUsers;
  @JsonKey(ignore: true)
  _$$UsersLoadedCopyWith<_$UsersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyUsersFilteredCopyWith<$Res> {
  factory _$$EmptyUsersFilteredCopyWith(_$EmptyUsersFiltered value,
          $Res Function(_$EmptyUsersFiltered) then) =
      __$$EmptyUsersFilteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyUsersFilteredCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$EmptyUsersFiltered>
    implements _$$EmptyUsersFilteredCopyWith<$Res> {
  __$$EmptyUsersFilteredCopyWithImpl(
      _$EmptyUsersFiltered _value, $Res Function(_$EmptyUsersFiltered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyUsersFiltered implements EmptyUsersFiltered {
  const _$EmptyUsersFiltered();

  @override
  String toString() {
    return 'UsersState.emptyUsersFiltered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyUsersFiltered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> filteredUsers)
        usersLoaded,
    required TResult Function() emptyUsersFiltered,
    required TResult Function() userPostsLoaded,
    required TResult Function(String message) failed,
  }) {
    return emptyUsersFiltered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult? Function()? emptyUsersFiltered,
    TResult? Function()? userPostsLoaded,
    TResult? Function(String message)? failed,
  }) {
    return emptyUsersFiltered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult Function()? emptyUsersFiltered,
    TResult Function()? userPostsLoaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (emptyUsersFiltered != null) {
      return emptyUsersFiltered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(EmptyUsersFiltered value) emptyUsersFiltered,
    required TResult Function(UserPostsLoaded value) userPostsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return emptyUsersFiltered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult? Function(UserPostsLoaded value)? userPostsLoaded,
    TResult? Function(Failed value)? failed,
  }) {
    return emptyUsersFiltered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult Function(UserPostsLoaded value)? userPostsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (emptyUsersFiltered != null) {
      return emptyUsersFiltered(this);
    }
    return orElse();
  }
}

abstract class EmptyUsersFiltered implements UsersState {
  const factory EmptyUsersFiltered() = _$EmptyUsersFiltered;
}

/// @nodoc
abstract class _$$UserPostsLoadedCopyWith<$Res> {
  factory _$$UserPostsLoadedCopyWith(
          _$UserPostsLoaded value, $Res Function(_$UserPostsLoaded) then) =
      __$$UserPostsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserPostsLoadedCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UserPostsLoaded>
    implements _$$UserPostsLoadedCopyWith<$Res> {
  __$$UserPostsLoadedCopyWithImpl(
      _$UserPostsLoaded _value, $Res Function(_$UserPostsLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserPostsLoaded implements UserPostsLoaded {
  const _$UserPostsLoaded();

  @override
  String toString() {
    return 'UsersState.userPostsLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserPostsLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> filteredUsers)
        usersLoaded,
    required TResult Function() emptyUsersFiltered,
    required TResult Function() userPostsLoaded,
    required TResult Function(String message) failed,
  }) {
    return userPostsLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult? Function()? emptyUsersFiltered,
    TResult? Function()? userPostsLoaded,
    TResult? Function(String message)? failed,
  }) {
    return userPostsLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult Function()? emptyUsersFiltered,
    TResult Function()? userPostsLoaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (userPostsLoaded != null) {
      return userPostsLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(EmptyUsersFiltered value) emptyUsersFiltered,
    required TResult Function(UserPostsLoaded value) userPostsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return userPostsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult? Function(UserPostsLoaded value)? userPostsLoaded,
    TResult? Function(Failed value)? failed,
  }) {
    return userPostsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult Function(UserPostsLoaded value)? userPostsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (userPostsLoaded != null) {
      return userPostsLoaded(this);
    }
    return orElse();
  }
}

abstract class UserPostsLoaded implements UsersState {
  const factory UserPostsLoaded() = _$UserPostsLoaded;
}

/// @nodoc
abstract class _$$FailedCopyWith<$Res> {
  factory _$$FailedCopyWith(_$Failed value, $Res Function(_$Failed) then) =
      __$$FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$Failed>
    implements _$$FailedCopyWith<$Res> {
  __$$FailedCopyWithImpl(_$Failed _value, $Res Function(_$Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Failed(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failed implements Failed {
  const _$Failed(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UsersState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedCopyWith<_$Failed> get copyWith =>
      __$$FailedCopyWithImpl<_$Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users, List<User> filteredUsers)
        usersLoaded,
    required TResult Function() emptyUsersFiltered,
    required TResult Function() userPostsLoaded,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult? Function()? emptyUsersFiltered,
    TResult? Function()? userPostsLoaded,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, List<User> filteredUsers)? usersLoaded,
    TResult Function()? emptyUsersFiltered,
    TResult Function()? userPostsLoaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(UsersLoaded value) usersLoaded,
    required TResult Function(EmptyUsersFiltered value) emptyUsersFiltered,
    required TResult Function(UserPostsLoaded value) userPostsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(UsersLoaded value)? usersLoaded,
    TResult? Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult? Function(UserPostsLoaded value)? userPostsLoaded,
    TResult? Function(Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(UsersLoaded value)? usersLoaded,
    TResult Function(EmptyUsersFiltered value)? emptyUsersFiltered,
    TResult Function(UserPostsLoaded value)? userPostsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements UsersState {
  const factory Failed(final String message) = _$Failed;

  String get message;
  @JsonKey(ignore: true)
  _$$FailedCopyWith<_$Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
