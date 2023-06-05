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
  bool get isLoading => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  List<User> get filteredUsers => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<User> users,
            List<User> filteredUsers, String errorMessage)
        usersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<User> users,
            List<User> filteredUsers, String errorMessage)?
        usersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<User> users, List<User> filteredUsers,
            String errorMessage)?
        usersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersState value) usersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsersState value)? usersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersState value)? usersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<User> users,
      List<User> filteredUsers,
      String errorMessage});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? users = null,
    Object? filteredUsers = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      filteredUsers: null == filteredUsers
          ? _value.filteredUsers
          : filteredUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersStateCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$_UsersStateCopyWith(
          _$_UsersState value, $Res Function(_$_UsersState) then) =
      __$$_UsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<User> users,
      List<User> filteredUsers,
      String errorMessage});
}

/// @nodoc
class __$$_UsersStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UsersState>
    implements _$$_UsersStateCopyWith<$Res> {
  __$$_UsersStateCopyWithImpl(
      _$_UsersState _value, $Res Function(_$_UsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? users = null,
    Object? filteredUsers = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_UsersState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      filteredUsers: null == filteredUsers
          ? _value._filteredUsers
          : filteredUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsersState implements _UsersState {
  const _$_UsersState(
      {this.isLoading = true,
      final List<User> users = const [],
      final List<User> filteredUsers = const [],
      this.errorMessage = ''})
      : _users = users,
        _filteredUsers = filteredUsers;

  @override
  @JsonKey()
  final bool isLoading;
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
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'UsersState.usersLoaded(isLoading: $isLoading, users: $users, filteredUsers: $filteredUsers, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._filteredUsers, _filteredUsers) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_filteredUsers),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      __$$_UsersStateCopyWithImpl<_$_UsersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<User> users,
            List<User> filteredUsers, String errorMessage)
        usersLoaded,
  }) {
    return usersLoaded(isLoading, users, filteredUsers, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<User> users,
            List<User> filteredUsers, String errorMessage)?
        usersLoaded,
  }) {
    return usersLoaded?.call(isLoading, users, filteredUsers, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<User> users, List<User> filteredUsers,
            String errorMessage)?
        usersLoaded,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(isLoading, users, filteredUsers, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersState value) usersLoaded,
  }) {
    return usersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsersState value)? usersLoaded,
  }) {
    return usersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersState value)? usersLoaded,
    required TResult orElse(),
  }) {
    if (usersLoaded != null) {
      return usersLoaded(this);
    }
    return orElse();
  }
}

abstract class _UsersState implements UsersState {
  const factory _UsersState(
      {final bool isLoading,
      final List<User> users,
      final List<User> filteredUsers,
      final String errorMessage}) = _$_UsersState;

  @override
  bool get isLoading;
  @override
  List<User> get users;
  @override
  List<User> get filteredUsers;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
