import 'dart:math';

import 'package:bloc_management/data/models/post_model.dart';
import 'package:bloc_management/data/repositories/Api/api.dart';
import 'package:dio/dio.dart';

class PostRepository {
  API api = API();
  Future<List<PostModel>> fetchPosts() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMaps) => PostModel.fromJson(postMaps)).toList();
    } catch (ex) {
      throw ex;
    }
  }
}
