import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:postsapp/core/data/config/injector.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> setup() async {
  getIt.init();
}
