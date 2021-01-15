import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/pages/animated_page.dart';
import 'package:flutter_widgets/src/pages/avatars_page.dart';
import 'package:flutter_widgets/src/pages/card_page.dart';
import 'package:flutter_widgets/src/pages/home_page.dart';
import 'package:flutter_widgets/src/pages/input_page.dart';
import 'package:flutter_widgets/src/pages/listview_page.dart';
import 'package:flutter_widgets/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    HomePage.route: (BuildContext context) => HomePage(),
    AlertPage.route: (BuildContext context) => AlertPage(),
    AvatarPage.route: (BuildContext context) => AvatarPage(),
    CardPage.route: (BuildContext context) => CardPage(),
    AnimatedPage.route: (BuildContext context) => AnimatedPage(),
    InputPage.route: (BuildContext context) => InputPage(),
    SliderPage.route: (BuildContext context) => SliderPage(),
    ListViewPage.route: (BuildContext context) => ListViewPage(),
  };
}

String getDefaultRoute() => HomePage.route;

Route getOnGenerateRoute(settings) {
  return MaterialPageRoute(builder: (context) => AlertPage());
}
