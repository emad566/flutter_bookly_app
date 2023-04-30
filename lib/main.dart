import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly_app/core/services/my_bloc_observer.dart';
import 'package:flutter_bookly_app/core/services/service_locator.dart';
import 'package:flutter_bookly_app/core/services/theme_services.dart';
import 'package:flutter_bookly_app/core/services/themes.dart';
import 'package:flutter_bookly_app/core/utlis/api_services.dart';
import 'package:flutter_bookly_app/features/home/data/models/repos/home_repo_implement.dart';
import 'package:flutter_bookly_app/features/home/presentation/view_model/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter_bookly_app/features/home/presentation/view_model/cubit/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter_bookly_app/features/home/presentation/views/home_view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await GetStorage.init();
  ApiService.init();
  setupGetItServiceLocator();

  runApp(const BooklyApp());
}

class BooklyApp extends StatefulWidget {
  const BooklyApp({super.key});

  @override
  State<BooklyApp> createState() => _BooklyAppState();
}

class _BooklyAppState extends State<BooklyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeMode themeMode = ThemeServices().theme;
    // Get.changeThemeMode(themeMode);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(getIt.get<HomeRepoImp>())..fetchFeaturedBooks()),
        BlocProvider(create: (context)=> NewestBooksCubit(getIt.get<HomeRepoImp>())..fetchNewestBooks())
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.lightThem,
        darkTheme: Themes.darkThem,
        themeMode: themeMode,
        home: const HomeView(),
      ),
    );
  }
}
