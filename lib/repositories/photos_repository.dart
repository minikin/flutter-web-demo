import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_demo/models/models.dart';
import 'package:flutter_web_demo/networking/photo_error.dart';
import 'package:flutter_web_demo/networking/photos_provider.dart';

class PhotoRepository {
  final _photoProvider = PhotoProvider();

  Future<BuiltList<Photo>> fetchPhotos({
    @required int page,
  }) async {
    try {
      final photos = await _photoProvider.fetchPhotos(
        page: page,
      );
      return photos;
    } on PhotoError catch (error) {
      throw ('Cannot fetch photos: \n${error.message}');
    }
  }

  Future<Photo> fetchPhoto({
    @required String photoId,
    @required int width,
    @required int height,
  }) async {
    try {
      final photo = await _photoProvider.fetchPhoto(
        photoId: photoId,
        width: width,
        height: height,
      );
      return photo;
    } on PhotoError catch (error) {
      throw ('Cannot fetch photo with id: \n${error.message}');
    }
  }
}
