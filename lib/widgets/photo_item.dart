import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/models/photo.dart';

class PhotoItem extends StatelessWidget {
  final Photo photo;
  final ValueChanged<Photo> onClick;

  PhotoItem({
    @required this.photo,
    @required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: UniqueKey(),
      behavior: HitTestBehavior.opaque,
      onTap: () => onClick(photo),
      child: Container(
        margin: const EdgeInsets.all(4),
        child: Image.network(
          photo.computedImageUrl(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
