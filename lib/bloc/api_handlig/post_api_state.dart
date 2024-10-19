import '../../data/models/post_model.dart';

abstract class PostApiState {}

class PostApiLoadingState extends PostApiState {}

class PostApiLoadedState extends PostApiState {
  final List<PostModel> posts;
  PostApiLoadedState(this.posts);
}

class PostApiErrorState extends PostApiState {
  final String error;
  PostApiErrorState(this.error);
}
