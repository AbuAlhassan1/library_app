import 'package:flutter/material.dart';

Widget pageTransitionBuilder(context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
  Animation<Offset> slideAnimation = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
  .animate(CurvedAnimation(parent: animation, curve: Curves.easeInOutCubic));

  return SlideTransition(position: slideAnimation, child: child);
}