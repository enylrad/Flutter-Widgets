import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {

  _MenuProvider();

  Future<List<dynamic>> loadData() async {

    final response = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(response);

    return dataMap['routes'];
  }
}

final menuProvider = _MenuProvider();
