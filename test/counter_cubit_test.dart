// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_cubit_basic/cubit/counter_number_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Counter cubit test", () {
    blocTest(
      'Initial testing',
      build: () => CounterNumberCubit(),
      expect: [],
    );
    
  });
}
