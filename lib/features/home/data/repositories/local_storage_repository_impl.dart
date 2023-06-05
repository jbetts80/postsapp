import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:postsapp/features/home/domain/entities/user.dart';
import 'package:postsapp/features/home/domain/repositories/local_storage_repository.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

@Injectable(as: LocalStorageRepository)
class LocalStorageRepositoryImpl implements LocalStorageRepository {
  LocalStorageRepositoryImpl();

  late final Database _db;
  final _store = StoreRef.main();

  @override
  Future<List<User>> init() async {
    final dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    final dbPath = join(dir.path, 'users.db');
    _db = await databaseFactoryIo.openDatabase(dbPath);
    return _fetchUsers();
  }

  Future<List<User>> _fetchUsers() async {
    final result = await _store.record('users').get(_db) ?? [];
    return (result as List).map((user) => User.fromJson(user as Map<String, dynamic>)).toList();
  }

  @override
  Future<void> saveUsers(List<User> users) async {
    final usersJson = users.map((user) => user.toJson()).toList();
    await _store.record('users').put(_db, usersJson);
  }
}
