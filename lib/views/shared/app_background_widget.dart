import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network("");
    // return Stack(
    //   children: [
    //     Align(
    //       alignment: Alignment.topLeft,
    //       child: Container(
    //         width: MediaQuery.of(context).size.width / 1.5, height: MediaQuery.of(context).size.width / 1.5,
    //         decoration: const BoxDecoration(
    //           color: Colors.orange,
    //           // borderRadius: BorderRadius.circular(1000)
    //         ),
    //       ),
    //     ),
    //     Align(
    //       alignment: Alignment.topRight,
    //       child: Container(
    //         width: MediaQuery.of(context).size.width / 1.2, height: MediaQuery.of(context).size.width / 1.2,
    //         decoration: const BoxDecoration(
    //           color: Colors.blueGrey,
    //           // borderRadius: BorderRadius.circular(1000)
    //         ),
    //       ),
    //     ),
    //     Align(
    //       alignment: Alignment.centerRight,
    //       child: Container(
    //         width: MediaQuery.of(context).size.width / 1.5, height: MediaQuery.of(context).size.width / 1.5,
    //         decoration: const BoxDecoration(
    //           color: Colors.green,
    //           // borderRadius: BorderRadius.circular(1000)
    //         ),
    //       ),
    //     ),
    //     Align(
    //       alignment: Alignment.centerLeft,
    //       child: Container(
    //         width: MediaQuery.of(context).size.width / 1.1, height: MediaQuery.of(context).size.width / 1.1,
    //         decoration: const BoxDecoration(
    //           color: Colors.black,
    //           // borderRadius: BorderRadius.circular(1000)
    //         ),
    //       ),
    //     ),
    //     Align(
    //       alignment: Alignment.bottomRight,
    //       child: Container(
    //         width: MediaQuery.of(context).size.width / 1.2, height: MediaQuery.of(context).size.width / 1.2,
    //         decoration: const BoxDecoration(
    //           color: Colors.orange,
    //           // borderRadius: BorderRadius.circular(1000)
    //         ),
    //       ),
    //     ),
    //     Align(
    //       alignment: Alignment.bottomLeft,
    //       child: Container(
    //         width: MediaQuery.of(context).size.width / 1.1, height: MediaQuery.of(context).size.width / 1.1,
    //         decoration: const BoxDecoration(
    //           color: Colors.blueGrey,
    //           // borderRadius: BorderRadius.circular(1000)
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}