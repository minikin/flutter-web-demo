import 'dart:async';
import 'dart:convert';
import 'package:flutter_web_demo/models/photo.dart';
import 'package:http/http.dart' as http;

class PhotoProvider {
  static Future<Stream<Photo>> getPhotos() async {
    final url = 'https://jsonplaceholder.typicode.com/photos';
    final client = http.Client();
    final streamedResponse =
        await client.send(http.Request('get', Uri.parse(url)));

    return streamedResponse.stream
        .transform(utf8.decoder)
        .transform(json.decoder)
        .expand((jsonBody) => (jsonBody as List))
        .map((jsonPhoto) => Photo.fromJson(jsonPhoto));
  }
}
