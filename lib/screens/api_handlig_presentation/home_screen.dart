import 'package:bloc_management/bloc/api_handlig_bloc/post_api_cubit.dart';
import 'package:bloc_management/bloc/api_handlig_bloc/post_api_state.dart';
import 'package:bloc_management/data/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiHomeScreen extends StatelessWidget {
  const ApiHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Api Handling"),
        backgroundColor: const Color(0xffF97038),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocBuilder<PostApiCubit, PostApiState>(
          builder: (context, state) {
            if (state is PostApiLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is PostApiLoadedState) {
              return buildPostListView(state.posts);
            }

            return const Center(
              child: Text("Temporary Error"),
            );
          },
        ),
      ),
    );
  }

  Widget buildPostListView(List<PostModel> posts) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          PostModel post = posts[index];

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                title: Text(post.id.toString()),
                subtitle: Text(post.body.toString()),
              ),
            ),
          );
        });
  }
}
