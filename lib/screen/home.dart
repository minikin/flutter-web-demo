import 'package:built_collection/built_collection.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/models/photo.dart';
import 'package:flutter_web_demo/repositories/photos_repository..dart';
import 'package:flutter_web_demo/widgets/photo_item.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _photoRepository = PhotoRepository();
  final BuiltList<Photo> photoList = BuiltList<Photo>();
  final isFetchingNextPage = false;
  double screenSize = 0;
  ScrollController _scrollController = ScrollController();

  @override
  initState() {
    _getPhotos();
    super.initState();
  }

  _getPhotos() async {
    final items = await _photoRepository.fetchPhotos(page: 1);
    photoList.rebuild((b) => b
      ..clear()
      ..addAll(items));
  }

  @override
  Widget build(BuildContext context) {
    setState(() => screenSize = MediaQuery.of(context).size.width);
    print(screenSize);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web App'),
      ),
      body: SafeArea(
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (screenSize >= 600) ? 4 : 1),
            itemCount: photoList.length,
            itemBuilder: (_, index) {
              return PhotoItem(photo: photoList[index]);
            },
            controller: _scrollController,
          ),
        ),
      ),
    );
  }
}
