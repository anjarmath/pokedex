import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routeNavigatorKeyProvider = Provider<GlobalKey<NavigatorState>>((ref) {
  return GlobalKey<NavigatorState>(debugLabel: 'route');
});
