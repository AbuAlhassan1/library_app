import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/controllers/category/category_cubit.dart';
import 'package:library_app/views/pages/home/category_bar.dart/category_bar_chip.dart';
import 'package:library_app/views/shared/shimmer_widget.dart';

class CategoriesBar extends StatefulWidget {
  const CategoriesBar({super.key});

  @override
  State<CategoriesBar> createState() => _CategoriesBarState();
}

class _CategoriesBarState extends State<CategoriesBar> {

  String selectedCategoryId = "0";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if( state is CategoryLoading ){
            return Row(
              children: List.generate(
                10,
                (index) => Padding(
                  padding: EdgeInsetsDirectional.only(end: 10.w, start: index == 0 ? 20.sp : 0),
                  child: ShimmerWidget(child: Chip(
                    label: SizedBox(width: 100.sp),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    padding: EdgeInsets.symmetric(vertical: 18.sp,),
                  )),
                )
              ),
            );
          }

          if( state is CategoryInitial ){
            return Row(
              children: List.generate(
                state.categoriesObj.length,
                (index) => Padding(
                  padding: EdgeInsetsDirectional.only(start: index == 0 ? 20.w : 0),
                  child: CategoryBarChip(
                    categoryObj: state.categoriesObj[index],
                    selected: selectedCategoryId,
                    onPressed: () => setState(() => selectedCategoryId = state.categoriesObj[index].id.toString()),
                  ),
                )
              ),
            );

          }
          return Row(
            children: List.generate(
              2,
              (index) => const SizedBox()
            ),
          );
        },
      ),
    );
  }
}