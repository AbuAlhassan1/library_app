import 'package:library_app/controllers/auth/auth_controller.dart';
import 'package:library_app/controllers/auth/login_controller.dart';
import 'package:library_app/controllers/book/book_cubit.dart';
import 'package:library_app/controllers/category/category_cubit.dart';
import 'package:library_app/controllers/l10n/l10n_cubit.dart';
import 'package:library_app/controllers/theme/theme_cubit.dart';
import 'package:library_app/controllers/theme/theme_cubit_states.dart';
import 'package:library_app/controllers/user/user_cubit.dart';
import 'package:library_app/routing/routes.dart';
import 'package:library_app/views/constants/themes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthController()),
        BlocProvider(create: (context) => LoginController()),
        BlocProvider(create: (context) => UserCubit()),
        BlocProvider(create: (context) => CategoryCubit()),
        BlocProvider(create: (context) => BookCubit()),
        BlocProvider(create: (context) => L10nCubit()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: const InitRoute()
    );
  }
}

class InitRoute extends StatelessWidget {
  const InitRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeCubitState>(
      builder: (context, state) => ScreenUtilInit(
        designSize: const Size(400, 860),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp.router(
          scaffoldMessengerKey: scaffoldKey,
          theme: state == DarkTheme() ? Themes.darkTheme : Themes.lightTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}