import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routenme, {Object? argument}) {
    return Navigator.of(this).pushNamed(routenme, arguments: argument);
  }

  Future<dynamic> pushReplacementNamed(String routenme, {Object? argument}) {
    return Navigator.of(this)
        .pushReplacementNamed(routenme, arguments: argument);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routenme,
      {Object? argument, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routenme, predicate, arguments: argument);
  }

  void pop() => Navigator.of(this).pop();
}
