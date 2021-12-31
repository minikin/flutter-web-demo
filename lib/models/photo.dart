library photo;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_web_demo/models/serializers.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  static Serializer<Photo> get serializer => _$photoSerializer;

  factory Photo([void Function(PhotoBuilder) updates]) = _$Photo;

  Photo._();

  String get author;

  int get height;

  String get id;

  @BuiltValueField(wireName: 'download_url')
  String get imageUrl;

  String get url;

  int get width;

  String get computedImageUrl => 'https://picsum.photos/id/$id/400/400';

  static Photo? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Photo.serializer,
      json.decode(jsonString),
    );
  }

  // static Photo? parsePhoto(String responseBody) {
  //   return Photo.fromJson(responseBody);
  // }

  static BuiltList<Photo> parseListOfPhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, Object>>();
    return deserializeListOf<Photo>(parsed);
  }
}
