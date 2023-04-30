import 'package:flutter_bookly_app/features/home/data/models/repos/home_repo_implement.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetItServiceLocator() {
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp());
}