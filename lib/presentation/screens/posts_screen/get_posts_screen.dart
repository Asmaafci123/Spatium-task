import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spatium_task/logic/get_posts/get_posts_cubit.dart';
import 'package:spatium_task/presentation/screens/posts_screen/widgets/list.dart';
import 'package:spatium_task/presentation/screens/posts_screen/widgets/tab.dart';
import '../../../core/constants/app_constants.dart';
import '../../../logic/get_posts/get_posts_states.dart';
import '../../widgets/utils/loading_dialog.dart';

class PostsScreen extends StatefulWidget {
  static const routeName = 'PostsScreen';

  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen>  with TickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async{
      await GetPostsCubit.get(context).getPosts(PostCatTitle.Hot,"");
    });
  }
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync:this,initialIndex: 0);
    return BlocConsumer<GetPostsCubit,GetPostsStates>(
      listener: (context, state) {
        if(state is LoadingGetPostsState)
          {
            loadingAlertDialog(context);
          }
        if(state is SuccessGetPostsState)
        {
          Navigator.pop(context);
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=GetPostsCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body:SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(14.w, 10.h, 14.w, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("/r/FlutterDev",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                        ),
                        child: TabBar(
                            controller: _tabController,
                            isScrollable: true,
                            labelColor: Colors.black,
                            unselectedLabelColor: Color(0xFF6D6D6D),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorPadding: EdgeInsets.symmetric(vertical: 20.h),
                            padding: EdgeInsets.zero,
                            labelPadding: EdgeInsets.symmetric(vertical: 0.h),
                            onTap: (index) async{
                              if (index == 0) {
                                await cubit.getPosts(PostCatTitle.Hot,nextAfter);
                              }
                              if (index == 1) {
                                await cubit.getPosts(PostCatTitle.New,nextAfter);
                              }
                              if (index == 2) {
                                await cubit.getPosts(PostCatTitle.Rising,nextAfter);
                              }
                            },
                            tabs: [
                               TabWidget(title: PostCatTitle.Hot.name.toString(),),
                              TabWidget(title: PostCatTitle.New.name.toString(),),
                              TabWidget(title: PostCatTitle.Rising.name.toString(),),
                            ]),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFFF6F6F6),
                    child: Padding(
                      padding:EdgeInsets.fromLTRB(14.w,14.h,14.w,0),
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          ListWidget(posts: cubit.hotPosts,cat:PostCatTitle.Hot ,),
                          ListWidget(posts: cubit.newPosts,cat:PostCatTitle.New),
                          ListWidget(posts: cubit.risingPosts,cat:PostCatTitle.Rising ),
                        ],),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
