import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationIndexProvider =
    StateNotifierProvider<NavigationNotifier, int>(
  (ref) => NavigationNotifier(),
);

class NavigationNotifier extends StateNotifier<int> {
  NavigationNotifier() : super(0);

  void changeIndex(int index) {
    state = index;
  }
}