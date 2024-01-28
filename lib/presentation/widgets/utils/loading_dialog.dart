import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

loadingAlertDialog(BuildContext context,{bool isDismissible=false}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Row(
          children: [
            const CircularProgressIndicator(),
            SizedBox(
              width: 4.w,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.w),
              child: Text("Loading",style: TextStyle(
                  fontSize: 12.sp
              ),),
            ),
          ],
        ),
      );
    },
  );
}
