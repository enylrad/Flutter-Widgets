import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  static final route = '/list';

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = ScrollController();

  List<int> _listNumbers = List<int>();
  int _lastNumber = 0;
  bool _loading = false;

  @override
  void initState() {
    super.initState();

    _addTenImages();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lists'),
        ),
        body: Stack(
          children: [
            _createList(),
            _createLoading(),
          ],
        ));
  }

  Widget _createList() {
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: _listNumbers.length,
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listNumbers[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          );
        },
      ),
      onRefresh: _refreshList,
    );
  }

  _addTenImages() {
    for (var i = 0; i < 10; i++) {
      _lastNumber++;
      _listNumbers.add(_lastNumber);
    }

    setState(() {});
  }

  _fetchData() async {
    _loading = true;
    setState(() {});

    final duration = Duration(seconds: 2);
    Timer(duration, responseHttp);
  }

  responseHttp() {
    _loading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
    );
    _addTenImages();
  }

  Widget _createLoading() {
    if (_loading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> _refreshList() async {
    final duration = Duration(seconds: 2);
    return Future.delayed(duration, () {
      _listNumbers.clear();
      _addTenImages();
    });
  }
}
