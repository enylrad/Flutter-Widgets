import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/providers/menu_provider.dart';
import 'package:flutter_widgets/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {

  static final route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Widgets'),
        ),
        body: _listWidgets());
  }

  Widget _listWidgets() {
    return FutureBuilder(
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsWidgets(snapshot.data, context),
        );
      },
      future: menuProvider.loadData(),
      initialData: [],
    );
  }
}

List<Widget> _itemsWidgets(List<dynamic> widgets, BuildContext context) {
  final List<Widget> options = [];

  widgets.forEach((widget) {
    final widgetTemp = ListTile(
      title: Text(widget['text']),
      leading: getIcon(widget['icon']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: () {
        Navigator.pushNamed(context, widget['route']);
      },
    );
    options..add(widgetTemp)..add(Divider());
  });

  return options;
}
