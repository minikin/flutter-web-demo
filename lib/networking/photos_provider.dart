import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:flutter_web/foundation.dart';
import 'package:flutter_web_demo/models/models.dart';
import 'package:flutter_web_demo/networking/photo_error.dart';
import 'package:http/http.dart' as http;

class PhotoProvider {
  final _baseUrl = 'https://picsum.photos/v2/';
  final _client = http.Client();

  Future<Photo> fetchPhoto({
    @required String photoId,
  }) async {
    final response = await _client.get(
      '$_baseUrl/$photoId',
      headers: {
        HttpHeaders.acceptHeader: '*/*',
        HttpHeaders.cacheControlHeader: 'no-cache',
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    );
    print('fetchPhoto: ${response.statusCode}');
    if (response.statusCode == 200) {
      return compute(Photo.parsePhoto, response.body);
    } else {
      throw PhotoError(response.statusCode.toString());
    }
  }

  Future<BuiltList<Photo>> fetchPhotos({
    @required String page,
  }) async {
    final response = await _client.get(
      '$_baseUrl/questionnaires',
      headers: {
        HttpHeaders.acceptHeader: '*/*',
        HttpHeaders.cacheControlHeader: 'no-cache',
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    );
    print('fetchPhotos: ${response.statusCode}');
    if (response.statusCode == 200) {
      return compute(Photo.parseListOfPhotos, response.body);
    } else {
      throw PhotoError(response.statusCode.toString());
    }
  }
}
