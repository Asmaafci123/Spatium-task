import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../data/models/data_post_model/data_post_model.dart';
class Post extends StatelessWidget {
  final DataPostModel? post;
  const Post({Key? key,this.post}) : super(key: key);
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url,mode: LaunchMode.externalApplication,)) {
      throw Exception('Could not launch $url');
    }
  }
  @override
  Widget build(BuildContext context) {
    print(post?.selftext);
    return GestureDetector(
      onTap: ()
      {
        final Uri url = Uri.parse(post?.url ?? '');
        _launchUrl(url);
      },
      child: Card(
        elevation: 10,
        shape: Border(
            top: BorderSide(color: Color(0xFFF2F07F), width: 4.w)),
        child: SizedBox(
          height: 150.h,
          child: Padding(
            padding:EdgeInsets.fromLTRB(15.w, 15.h, 15.w,5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(post?.title??"",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(
                  height: 20.h,
                ),
                AutoSizeText(post?.selftext??"",style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
