class Photo {
  final int id;
  final String imagePath;

  Photo.fromJson(Map jsonMap)
      : id = jsonMap['id'],
        imagePath = jsonMap['url'];
}
