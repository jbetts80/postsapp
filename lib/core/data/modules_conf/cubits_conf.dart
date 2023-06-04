import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:postsapp/features/home/presentation/cubit/users_cubit.dart';

abstract class CubitsConf {
  @lazySingleton
  UsersCubit get authenticationCubit => UsersCubit(GetIt.I.get());
}
