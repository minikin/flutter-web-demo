import 'package:flutter_web/material.dart';
import 'package:flutter_web_demo/models/photo.dart';
import 'package:flutter_web_demo/networking/photos_provider.dart';
import 'package:flutter_web_demo/widgets/photo_item.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Photo> photoList = [];
  final isFetchingNextPage = false;
  double screenSize = 0;
  ScrollController _scrollController = ScrollController();

  @override
  initState() {
    _getPhotos();
    super.initState();
  }

  _getPhotos() async {
    // final stream = await PhotoProvider.getPhotos();
    // stream.listen((photo) => setState(() => photoList.add(photo)));
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
