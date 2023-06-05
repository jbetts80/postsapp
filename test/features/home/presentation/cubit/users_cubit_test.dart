import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:postsapp/features/home/domain/entities/_entities.dart';
import 'package:postsapp/features/home/domain/repositories/user_repository.dart';
import 'package:postsapp/features/home/presentation/cubit/users_cubit.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockUsersCubit extends Mock implements UsersCubit {}

void main() {
  group('UsersCubit', () {
    late UserRepository userRepository;
    late UsersCubit usersCubit;

    final usersMock = [
      User(
        id: 1,
        name: 'Glenna Reichert',
        username: 'Delphine',
        email: 'Chaim_McDermott@dana.io',
        address: Address(
          street: 'Dayna Park',
          suite: 'Suite 449',
          city: 'Bartholomebury',
          zipcode: '76495-3109',
          geo: Geo(
            lat: '24.6463',
            lng: '-168.8889',
          ),
        ),
        phone: '1-305-457-815',
        website: 'www.catunysas.com',
        company: Company(
          name: 'Yost and Sons',
          catchPhrase: 'Switchable contextually-based project',
          bs: 'aggregate real-time technologies',
        ),
      ),
      User(
        id: 2,
        name: 'Clementina DuBuque',
        username: 'Moriah.Stanton',
        email: 'Rey.Padberg@karina.biz',
        address: Address(
          street: 'Kattie Turnpike',
          suite: 'Suite 198',
          city: 'Lebsackbury',
          zipcode: '31428-2261',
          geo: Geo(
            lat: '-38.2386',
            lng: '57.2232',
          ),
        ),
        phone: '024-648-3804',
        website: 'ambrose.net',
        company: Company(
          name: 'Hoeger LLC',
          catchPhrase: 'Centralized empowering task-force',
          bs: 'target end-to-end models',
        ),
      ),
    ];

    final filteredUser = User(
      id: 2,
      name: 'Clementina DuBuque',
      username: 'Moriah.Stanton',
      email: 'Rey.Padberg@karina.biz',
      address: Address(
        street: 'Kattie Turnpike',
        suite: 'Suite 198',
        city: 'Lebsackbury',
        zipcode: '31428-2261',
        geo: Geo(
          lat: '-38.2386',
          lng: '57.2232',
        ),
      ),
      phone: '024-648-3804',
      website: 'ambrose.net',
      company: Company(
        name: 'Hoeger LLC',
        catchPhrase: 'Centralized empowering task-force',
        bs: 'target end-to-end models',
      ),
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
      usersCubit = MockUsersCubit();
      when(() => userRepository.fetchUsers()).thenAnswer((_) async => usersMock);
      when(() => userRepository.fetchUserPosts(2)).thenAnswer((_) async => userPostsMock);
    });

    blocTest<UsersCubit, UsersState>(
      'When the UsersCubit is created should emit status Status.success',
      build: () => UsersCubit(userRepository),
      act: (cubit) async {
        await Future.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUsers();
      },
      expect: () => [
        UsersState(users: usersMock, filteredUsers: usersMock, posts: [], status: Status.success),
      ],
    );

    blocTest<UsersCubit, UsersState>(
      'When the UsersCubit is created should emit status Status.error',
      setUp: () => when(() => userRepository.fetchUsers()).thenThrow(Exception()),
      build: () => UsersCubit(userRepository),
      act: (cubit) async {
        await Future.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUsers();
      },
      expect: () => [
        const UsersState(status: Status.error, errorMessage: 'Error when fetching the users'),
      ],
    );

    blocTest<UsersCubit, UsersState>(
      'When filtering users should emit status Status.success',
      build: () => UsersCubit(userRepository),
      act: (cubit) async {
        await Future.delayed(const Duration(milliseconds: 200));
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
      build: () => UsersCubit(userRepository),
      act: (cubit) async {
        await Future.delayed(const Duration(milliseconds: 200));
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
      build: () => UsersCubit(userRepository),
      act: (cubit) async {
        await Future.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUserPosts(2);
      },
      expect: () => [
        UsersState(users: [], filteredUsers: [], posts: userPostsMock, status: Status.success),
      ],
    );

    blocTest<UsersCubit, UsersState>(
      'When fetching fetching the user posts should emit status Status.error',
      setUp: () => when(() => userRepository.fetchUserPosts(2)).thenThrow(Exception()),
      build: () => UsersCubit(userRepository),
      act: (cubit) async {
        await Future.delayed(const Duration(milliseconds: 200));
        await cubit.fetchUserPosts(2);
      },
      expect: () => [
        const UsersState(status: Status.error, errorMessage: 'Error when fetching the user [2] posts'),
      ],
    );
  });
}
