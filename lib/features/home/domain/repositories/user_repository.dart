import 'package:postsapp/features/home/domain/entities/post.dart';
import 'package:postsapp/features/home/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> fetchUsers();
  Future<List<Post>> fetchUserPosts(int userId);
}
