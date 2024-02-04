import 'package:library_app/helper/screen_transition_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRoute routeBuilder({
  required String path,
  required Function(BuildContext context, GoRouterState state) child,
  String? name,
  List<RouteBase>? routes,
}){
  return GoRoute(
    path: path,
    name: name,
    routes: routes?? [],
    pageBuilder: (context, state) => CustomTransitionPage<SlideTransition>(
      key: state.pageKey,
      transitionsBuilder: pageTransitionBuilder,
      child: child(context, state)
    )
  );
}