import 'package:flutter/material.dart';

class HomeControler extends InheritedNotifier<ValueNotifier<int>> {
  HomeControler({key, required child, notifier})
      : super(key: key, child: child, notifier: ValueNotifier(0));

  int get value => notifier!.value;

  incrementar() {
    notifier!.value++;
  }
}
