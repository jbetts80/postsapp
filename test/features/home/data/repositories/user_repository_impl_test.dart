import 'package:flutter_test/flutter_test.dart';
// ignore: depend_on_referenced_packages
import 'package:mocktail/mocktail.dart';
import 'package:postsapp/features/home/domain/entities/_entities.dart';
import 'package:postsapp/features/home/domain/repositories/user_repository.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  group('UserRepository', () {
    late UserRepository userRepository;

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
      when(() => userRepository.fetchUsers()).thenAnswer((_) async => usersMock);
      when(() => userRepository.fetchUserPosts(2)).thenAnswer((_) async => userPostsMock);
    });

    test('Fetch all users', () async {
      expect(await userRepository.fetchUsers(), usersMock);
    });

    test('Fetch user posts', () async {
      expect(await userRepository.fetchUserPosts(2), userPostsMock);
    });
  });
}
