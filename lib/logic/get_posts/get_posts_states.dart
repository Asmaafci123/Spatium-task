abstract class GetPostsStates {}

class InitialLogState extends GetPostsStates{}

class LoadingGetPostsState extends GetPostsStates{}
class SuccessGetPostsState extends GetPostsStates {}
class FailGetPostsState extends GetPostsStates {
  final String message;
  FailGetPostsState({required this.message});
}