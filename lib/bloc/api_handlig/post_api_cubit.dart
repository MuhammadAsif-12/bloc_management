import 'package:bloc/bloc.dart';
import 'package:bloc_management/bloc/api_handlig/post_api_state.dart';
import 'package:bloc_management/data/models/post_model.dart';
import 'package:bloc_management/data/repositories/post_repository.dart';

class PostApiCubit extends Cubit<PostApiState> {
  PostApiCubit() : super(PostApiLoadingState());

  PostRepository postRepository = PostRepository();

  void fetchPost() async {
    try {
      List<PostModel> posts = await postRepository.fetchPosts();
      emit(PostApiLoadedState(posts));
    } catch (ex) {
      emit(PostApiErrorState(ex.toString()));
    }
  }
}
