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

    setUpAll(() {
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
