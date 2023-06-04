import 'package:injectable/injectable.dart';
import 'package:postsapp/core/utils/api.dart';
import 'package:postsapp/features/home/domain/entities/post.dart';
import 'package:postsapp/features/home/domain/entities/user.dart';
import 'package:postsapp/features/home/domain/repositories/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._api);
  final Api _api;

  @override
  Future<List<User>> fetchUsers() async {
    try {
      final users = await _api.getList(endpoint: 'users');
      return users.map(User.fromJson).toList();
    } catch (_) {
      // TODO(jbetts80): Implement the error handling
      throw Exception('Error when fetching the users');
    }
  }

  @override
  Future<List<Post>> fetchUserPosts(int userId) async {
    try {
      final userPosts = await _api.getList(endpoint: 'posts?userId=$userId');
      return userPosts.map(Post.fromJson).toList();
    } catch (_) {
      // TODO(jbetts80): Implement the error handling
      throw Exception('Error when fetching the user [$userId] posts');
    }
  }
}
