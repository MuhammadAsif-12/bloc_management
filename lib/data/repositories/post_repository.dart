import 'dart:math';

import 'package:bloc_management/data/repositories/Api/api.dart';
import 'package:dio/dio.dart';

class PostRepository {
  API api = API();
  Future<void> fetchPosts() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      log(response.data);
    } catch (ex) {
      throw ex;
    }
  }
}
