import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spatium_task/presentation/screens/posts_screen/widgets/post.dart';

import '../../../../data/models/children_model/children_model.dart';
class ListWidget extends StatelessWidget {
  final   List<ChildrenModel>?posts;
  const ListWidget({Key? key,required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xFFF6F6F6),
      child: ListView.separated(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder:(context,index)=>Post(post: posts?[index].data,),
          separatorBuilder:(context,index)=>SizedBox(
            height: 10.h,
          ),
          itemCount: posts?.length??0
      ),
    );
  }
}
