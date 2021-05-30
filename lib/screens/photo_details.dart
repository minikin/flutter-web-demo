import 'package:flutter/material.dart';
import 'package:flutter_web_demo/models/models.dart';

class PhotoDetails extends StatelessWidget {
  final Photo photo;

  const PhotoDetails({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () => Navigator.pop(context),
          child: Image.asset(
            'icons/left_arrow.png',
            fit: BoxFit.cover,
            width: 30,
          ),
        ),
        title: Center(
          child: Text(
            'Photo by ${photo.author}',
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 1,
        bottomOpacity: 0,
      ),
      body: Center(
        child: Container(
          child: Image.network(
            photo.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
