import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spatium_task/core/constants/app_constants.dart';

import '../../data/models/children_model/children_model.dart';
import '../../data/models/data_post_model/data_post_model.dart';
import '../../data/repositories/flutter_dev_repository.dart';
import 'get_posts_states.dart';

class GetPostsCubit extends Cubit<GetPostsStates> {
  static GetPostsCubit get(context) => BlocProvider.of(context);
  final FlutterDevRepository flutterDevRepository ;

  GetPostsCubit({required this.flutterDevRepository}) : super(InitialLogState());
  List<ChildrenModel>?newPosts=[];
  List<ChildrenModel>?hotPosts=[];
  List<ChildrenModel>?risingPosts=[];
  getPosts(PostCat category,  String? after)async
  {
    newPosts=[];
    hotPosts=[];
    risingPosts=[];
    emit(LoadingGetPostsState());
    final result=await flutterDevRepository.getPosts(category: category,after: after);
    result.fold((failure){
      emit(FailGetPostsState(message:failure.message));
    }, (response) {
      if(category==PostCat.New) {
        newPosts=response.data?.children;
      }
      if(category==PostCat.hot) {
        hotPosts=response.data?.children;
      }
      if(category==PostCat.rising) {
        risingPosts=response.data?.children;
      }
      emit(SuccessGetPostsState());
    });
  }
}
