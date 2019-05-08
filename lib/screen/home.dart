import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/models/photo.dart';
import 'package:flutter_web_demo/widgets/photo_item.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Photo> photoList = [];
  final isFetchingNextPage = false;
  ScrollController _scrollController = ScrollController();

  @override
  initState() {
    _getPhotos();
    super.initState();
  }

  _getPhotos() async {
    final stream = await getPhotos();
    stream.listen((photo) => setState(() => photoList.add(photo)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemExtent: 200,
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
