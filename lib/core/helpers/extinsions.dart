import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension  Navigation on BuildContext{
  void push(Widget page) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
  }

  void pop() {
    Navigator.of(this).pop();}

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) async {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }
  void pushNamedAndRemoveUntil(String newRouteName, RoutePredicate predicate,
      {Object? arguments}) {
    Navigator.of(this).pushNamedAndRemoveUntil(
        newRouteName, predicate,
        arguments: arguments);
  }
}
