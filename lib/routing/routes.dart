import 'package:library_app/controllers/auth/auth_controller.dart';
import 'package:library_app/controllers/auth/auth_cubit_states.dart';
import 'package:library_app/guard.dart';
import 'package:library_app/routing/route_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/views/pages/home/home_page_wrapper.dart';


final router = GoRouter(
  initialLocation: '/',
  routes: [
    routeBuilder(
      path: '/',
      child: (context, state) => BlocBuilder<AuthController, AuthCubitStates>(
        builder: (context, state) {
          return FutureBuilder<bool>(
            future: context.read<AuthController>().getIsLoggedIn(context),
            initialData: null,
            builder: (context, snapshot) {
              if( snapshot.data != null ){
                return Guard(
                  context: context,
                  predicate: (_) => snapshot.data != null ? snapshot.data! : false,
                  onFail: (_) => const Placeholder(),
                  onPass: (_) => const HomePageWrapper(),
                );
              } else {
                return const SizedBox();
              }
            },
          );
        },
      ),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(child: Scaffold(
    body: Center(child: Text(state.error.toString())),
  )),
);