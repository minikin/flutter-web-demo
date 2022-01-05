import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_demo/models/models.dart';
import 'package:flutter_web_demo/networking/photo_error.dart';
import 'package:http/http.dart' show Client;

class PhotoProvider {
  final _baseUrl = 'https://picsum.photos/v2';
  final _client = Client();

  Future<Photo?> fetchPhoto({
    required String photoId,
    required int width,
    required int height,
  }) async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/id/$photoId/$width/$height'),
    );
    print('fetchPhoto: ${response.statusCode}');
    if (response.statusCode == 200) {
      return compute(Photo.fromJson, response.body);
    } else {
      throw PhotoError(response.statusCode.toString());
    }
  }

  Future<BuiltList<Photo>> fetchPhotos({
    required int page,
  }) async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/list?page=$page&limit=50'),
    );
    print('fetchPhotos: ${response.statusCode}');
    if (response.statusCode == 200) {
      return compute(Photo.listFromJsson, response.body);
    } else {
      throw PhotoError(response.statusCode.toString());
    }
  }
}
