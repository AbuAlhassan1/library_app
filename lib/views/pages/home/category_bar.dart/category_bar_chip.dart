import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/models/categories/category_model.dart';

class CategoryBarChip extends StatelessWidget {
  final Category categoryObj;
  final String selected;
  final Function onPressed;
  const CategoryBarChip({super.key, required this.categoryObj, required this.onPressed, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 15.sp),
      child: Material(
        color: selected == categoryObj.id ? Colors.orange : Colors.transparent,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          onTap: () => Future.delayed(const Duration(milliseconds: 200)).then((value) => onPressed()),
          borderRadius: BorderRadius.circular(100),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 20.sp),
            child: Center(
              child: Text(
                categoryObj.lable.toString(),
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: selected == categoryObj.id ? Colors.black : Colors.white
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}