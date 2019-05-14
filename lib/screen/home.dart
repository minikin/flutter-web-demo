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
  final _scrollController = ScrollController();
  List<Photo> photoList = [];
  int _currentPage = 1;
  double _screenSize = 0;

  @override
  initState() {
    _getPhotos();
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = 200;
      if (maxScroll - currentScroll <= delta) {
        _fetchNextPage();
      }
    });
    super.initState();
  }

  @override
  dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _getPhotos() async {
    final items = await _photoRepository.fetchPhotos(page: _currentPage);
    setState(() => photoList = items.toList());
  }

  _fetchNextPage() async {
    if (_currentPage <= 20) {
      ++_currentPage;
      final items = await _photoRepository.fetchPhotos(page: _currentPage);
      setState(() => photoList.addAll(items.toList()));
    } else {
      _currentPage = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() => _screenSize = MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Flutter Web App',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 1,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (_screenSize >= 600) ? 4 : 1),
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
