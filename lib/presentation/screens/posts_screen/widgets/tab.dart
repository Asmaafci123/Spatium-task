import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TabWidget extends StatelessWidget {
  final String title;
  const TabWidget({Key? key,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 75.h,
      child: Container(
        width: 110.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
      ),
    );
  }
}
