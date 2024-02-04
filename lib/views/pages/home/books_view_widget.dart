import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/controllers/book/book_cubit.dart';
import 'package:library_app/views/shared/shimmer_widget.dart';

class BooksView extends StatelessWidget {
  const BooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0, bottom: 0, right: 0, left: 0,
      child: BlocBuilder<BookCubit, BookState>(
        builder: (context, state) {
          if( state is BookLoading ){
            return PageView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => ShimmerWidget(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.red,
                )
              ),
            );
          }
          if( state is BookInitial ){
            return PageView.builder(
              scrollDirection: Axis.vertical,
              pageSnapping: false,
              itemCount: state.books.length,
              itemBuilder: (context, index) => SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: PageView(),
              ),
            );
          }
          return PageView.builder(
            itemCount: 2,
            itemBuilder: (context, index) => const SizedBox(),
          );
        },
      ),
    );
  }
}