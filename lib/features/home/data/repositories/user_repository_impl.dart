import 'package:injectable/injectable.dart';
import 'package:postsapp/features/home/domain/entities/post.dart';
import 'package:postsapp/features/home/domain/entities/user.dart';
import 'package:postsapp/features/home/domain/repositories/user_repository.dart';
import 'package:postsapp/features/home/domain/services/api.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._api);
  final Api _api;

  @override
  Future<List<User>> fetchUsers() async {
    try {
      final users = await _api.getList(endpoint: 'users') as List;
      return users.map((user) => User.fromJson(user as Map<String, dynamic>)).toList();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<Post>> fetchUserPosts(int userId) async {
    try {
      final userPosts = await _api.getList(endpoint: 'posts?userId=$userId') as List;
      return userPosts.map((post) => Post.fromJson(post as Map<String, dynamic>)).toList();
    } catch (_) {
      rethrow;
    }
  }
}
