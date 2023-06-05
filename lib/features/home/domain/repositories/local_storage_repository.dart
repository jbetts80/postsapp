import 'package:postsapp/features/home/domain/entities/user.dart';

abstract class LocalStorageRepository {
  Future<List<User>> init();
  Future<void> saveUsers(List<User> users);
}
