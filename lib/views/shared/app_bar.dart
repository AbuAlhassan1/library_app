import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/controllers/user/user_cubit.dart';
import 'package:library_app/views/shared/shimmer_widget.dart';

class AppBarWithUserInfo extends StatelessWidget {
  const AppBarWithUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          width: double.infinity, height: 60.h,
          child: BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              if( state is UserLoading ){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      ShimmerWidget(
                        child: CircleAvatar(backgroundColor: Colors.grey, radius: 25.sp)
                      ),
                      SizedBox(width: 10.w),
                      ShimmerWidget(
                        child: IconButton(
                          icon: Icon(Icons.notifications_none_rounded, size: 25.sp, color: Colors.white),
                          onPressed: (){},
                        )
                      ),
                    ]),
                    ShimmerWidget(
                      child: IconButton(
                        icon: Icon(Icons.menu_rounded, size: 25.sp, color: Colors.white),
                        onPressed: (){},
                      )
                    ),
                    
                  ],
                );
              }
          
              if( state is UserInitial ){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      CircleAvatar(
                        radius: 25.sp,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: CachedNetworkImage(
                            imageUrl: state.userProfileObj.image!,
                            placeholder: (context, url) => ShimmerWidget(child: CircleAvatar(backgroundColor: Colors.grey, radius: 25.sp)),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      IconButton(
                        icon: Icon(Icons.notifications_none_rounded, size: 25.sp, color: Colors.white),
                        onPressed: (){},
                      ),
                    ]),
                    IconButton(
                      icon: Icon(Icons.menu_rounded, size: 25.sp, color: Colors.white),
                      onPressed: (){},
                    ),
                  ],
                );
              }

              return Container(
                width: double.infinity, height: 60.h,
                color: Colors.red,
              );
            },
          ),
        ),
      ),
    );
  }
}