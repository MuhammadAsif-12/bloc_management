import 'package:bloc/bloc.dart';
import 'package:bloc_management/bloc/api_handlig_bloc/post_api_state.dart';
import 'package:bloc_management/data/models/post_model.dart';
import 'package:bloc_management/data/repositories/post_repository.dart';

class PostApiCubit extends Cubit<PostApiState> {
  PostApiCubit() : super(PostApiLoadingState()) {
    fetchPost();
  }

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
