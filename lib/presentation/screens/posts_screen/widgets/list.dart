import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spatium_task/logic/get_posts/get_posts_cubit.dart';
import 'package:spatium_task/presentation/screens/posts_screen/widgets/post.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../data/models/children_model/children_model.dart';
class ListWidget extends StatefulWidget {

  final   List<ChildrenModel>?posts;
  final PostCatTitle cat;
  const ListWidget({Key? key,required this.posts,required this.cat}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      GetPostsCubit.get(context).getPosts(widget.cat,nextAfter);
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder:(context,index)=>Post(post: widget.posts?[index].data,),
        separatorBuilder:(context,index)=>SizedBox(
          height: 10.h,
        ),
        itemCount: widget.posts?.length??0
    );
  }
}
