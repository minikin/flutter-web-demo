library photo;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_web_demo/models/serializers.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  @BuiltValueField(wireName: 'id')
  String get id;

  @BuiltValueField(wireName: 'author')
  String get author;

  @BuiltValueField(wireName: 'width')
  String get width;

  @BuiltValueField(wireName: 'height')
  String get height;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'download_url')
  String get imageUrl;

  Photo._();

  factory Photo([updates(PhotoBuilder b)]) = _$Photo;

  String toJson() {
    return json.encode(serializers.serializeWith(Photo.serializer, this));
  }

  static Photo fromJson(String jsonString) {
    return serializers.deserializeWith(
        Photo.serializer, json.decode(jsonString));
  }

  static Serializer<Photo> get serializer => _$photoSerializer;

  static Photo parsePhoto(String responseBody) {
    return Photo.fromJson(responseBody);
  }

  static BuiltList<Photo> parseListOfPhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return deserializeListOf<Photo>(parsed);
  }
}
