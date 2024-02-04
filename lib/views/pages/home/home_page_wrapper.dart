import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/controllers/book/book_cubit.dart';
import 'package:library_app/controllers/category/category_cubit.dart';
import 'package:library_app/controllers/user/user_cubit.dart';
import 'package:library_app/views/pages/home/books_view_widget.dart';
import 'package:library_app/views/pages/home/category_bar.dart/categories_bar.dart';
import 'package:library_app/views/shared/app_background_widget.dart';
import 'package:library_app/views/shared/app_bar.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class HomePageWrapper extends StatefulWidget {
  const HomePageWrapper({super.key});
  @override
  State<HomePageWrapper> createState() => _HomePageWrapperState();
}

class _HomePageWrapperState extends State<HomePageWrapper> {

  @override
  void initState() {
    context.read<UserCubit>().getUserInfo();
    context.read<CategoryCubit>().getCategories();
    context.read<BookCubit>().getBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [

          // const AppBackground(),

          SizedBox(
            height: double.infinity, width: double.infinity,
            child: AnimatedMeshGradient(
              colors: const [
                Colors.red,
                Colors.blue,
                Colors.green,
                Colors.yellow,
              ],
              options: AnimatedMeshGradientOptions(),
            ),
          ),

          const BooksView(),

          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.all(15.sp),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.sp),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.sp),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15.w),
                      border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.w)
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // App Bar
                        const AppBarWithUserInfo(),
                    
                        SizedBox(height: 15.h),
                    
                        // Search Text Field
                    
                        // Categories Bar
                        const CategoriesBar(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}