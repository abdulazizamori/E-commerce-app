import 'package:ecommerce/core/network/api-service.dart';
import 'package:ecommerce/data/online/repo/repository.dart';
import 'package:ecommerce/logic/auth-cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance..allowReassignment = true;

Future init() async{
  di.registerFactory<DioHelper>(() => DioImplementation());
  di.registerFactory<Repository>(() => RepoImplementation(di<DioHelper>()));
  di.registerFactory<AuthCubit>(() => AuthCubit());

}