import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/bloc_observe.dart';
import 'package:movie_app/cors/DI/dependency_injection.dart';
import 'package:movie_app/cors/Routing/app_router.dart';
import 'package:movie_app/cors/Themeing/theme_data_dark.dart';
import 'package:movie_app/cors/Themeing/theme_data_light.dart';
import 'package:movie_app/features/home/logic/top_rated_cubit/top_rated_cubit.dart';

void main() async {
  // await dotenv.load(fileName: "assets/.env");
  initGetIt();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => getIt<TopRatedCubit>(),
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: getThemeDataDark(),
        
        ),
      ),
    );
  }
}
