import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:postsapp/features/home/domain/entities/_entities.dart';
import 'package:postsapp/features/home/domain/repositories/local_storage_repository.dart';
import 'package:postsapp/features/home/domain/repositories/user_repository.dart';
import 'package:postsapp/features/home/presentation/cubit/users_cubit.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockLocalStorageRepository extends Mock implements LocalStorageRepository {}

class MockUsersCubit extends Mock implements UsersCubit {}

void main() {
  group('UsersCubit', () {
    late UserRepository userRepository;
    late LocalStorageRepository localRepository;
    late UsersCubit usersCubit;

    final usersMock = [
      User(
        id: 1,
        name: 'Glenna Reichert',
        username: 'Delphine',
        email: 'Chaim_McDermott@dana.io',
        phone: '1-305-457-815',
        website: 'www.catunysas.com',
      ),
      User(
        id: 2,
        name: 'Clementina DuBuque',
        username: 'Moriah.Stanton',
        email: 'Rey.Padberg@karina.biz',
        phone: '024-648-3804',
        website: 'ambrose.net',
      ),
    ];

    final filteredUser = User(
      id: 2,
      name: 'Clementina DuBuque',
      username: 'Moriah.Stanton',
      email: 'Rey.Padberg@karina.biz',
      phone: '024-648-3804',
      website: 'ambrose.net',
    );

    final userPostsMock = [
      Post(
        userId: 2,
        id: 8,
        title: 'dolorem dolore est ipsam',
        body: 'dignissimos aperiam dolorem qui eum',
      ),
      Post(
        userId: 2,
        id: 9,
        title: 'nesciunt iure omnis dolorem tempora et accusantium',
        body: 'consectetur animi nesciunt iure dolore',
      ),
      Post(
        userId: 2,
        id: 10,
        title: 'optio molestias id quia eum',
        body: 'quo et expedita modi cum officia vel magni',
      ),
    ];

    setUp(() {
      userRepository = MockUserRepository();
      localRepository = MockLocalStorageRepository();
      usersCubit = MockUsersCubit();
      when(() => userRepository.fetchUsers()).thenAnswer((_) async => usersMock);
      when(() => userRepository.fetchUserPosts(2)).thenAnswer((_) async => userPostsMock);
    });

    blocTest<UsersCubit, UsersState>(
      'When the UsersCubit is created should emit status Status.success',
      build: () => UsersCubit(userRepository, localRepository),
      act: (cubit) async {
        await Future<void>.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUsers();
      },
      expect: () => [
        UsersState(users: usersMock, filteredUsers: usersMock, posts: [], status: Status.success),
      ],
    );

    blocTest<UsersCubit, UsersState>(
      'When the UsersCubit is created should emit status Status.error',
      setUp: () => when(() => userRepository.fetchUsers()).thenThrow(Exception()),
      build: () => UsersCubit(userRepository, localRepository),
      act: (cubit) async {
        await Future<void>.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUsers();
      },
      expect: () => [
        const UsersState(status: Status.error, errorMessage: 'Error when fetching the users'),
      ],
    );

    blocTest<UsersCubit, UsersState>(
      'When filtering users should emit status Status.success',
      build: () => UsersCubit(userRepository, localRepository),
      act: (cubit) async {
        await Future<void>.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUsers();
        cubit.filterUsers('entina');
      },
      skip: 1,
      expect: () => [
        UsersState(users: usersMock, filteredUsers: [filteredUser], posts: [], status: Status.success),
      ],
    );

    blocTest<UsersCubit, UsersState>(
      'When filtering users should emit status Status.error',
      setUp: () => when(() => usersCubit.filterUsers('entina')).thenThrow(Exception()),
      build: () => UsersCubit(userRepository, localRepository),
      act: (cubit) async {
        await Future<void>.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUsers();
        cubit.filterUsers('entina');
      },
      skip: 1,
      expect: () => [
        UsersState(users: usersMock, filteredUsers: [filteredUser], posts: [], status: Status.success),
      ],
    );

    blocTest<UsersCubit, UsersState>(
      'When fetching fetching the user posts should emit status Status.success',
      build: () => UsersCubit(userRepository, localRepository),
      act: (cubit) async {
        await Future<void>.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUserPosts(2);
      },
      expect: () => [
        UsersState(users: [], filteredUsers: [], posts: userPostsMock, status: Status.success),
      ],
    );

    blocTest<UsersCubit, UsersState>(
      'When fetching fetching the user posts should emit status Status.error',
      setUp: () => when(() => userRepository.fetchUserPosts(2)).thenThrow(Exception()),
      build: () => UsersCubit(userRepository, localRepository),
      act: (cubit) async {
        await Future<void>.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUserPosts(2);
      },
      expect: () => [
        const UsersState(status: Status.error, errorMessage: 'Error when fetching the user [2] posts'),
      ],
    );
  });
}
