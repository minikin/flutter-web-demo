import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/models/photo.dart';

class PhotoItem extends StatelessWidget {
  PhotoItem({
    @required this.photo,
  });
  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: Image.network(
        photo.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
