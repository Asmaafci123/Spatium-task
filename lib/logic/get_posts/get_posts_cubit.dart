import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  getPosts(String category)async
  {
    newPosts=[];
    hotPosts=[];
    risingPosts=[];
    emit(LoadingGetPostsState());
    final result=await flutterDevRepository.getPosts(category: category);
    result.fold((failure){
      emit(FailGetPostsState(message:failure.message));
    }, (response) {
      print("******************");
      if(category=="new") {
        newPosts=response.data?.children;
      }
      if(category=="hot") {
        hotPosts=response.data?.children;
      }
      if(category=="rising") {
        risingPosts=response.data?.children;
      }
      print(newPosts);
      print("******************");
      emit(SuccessGetPostsState());
    });
  }
}
