import 'package:flutter_app_testing/models/favorites.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Testing app Provider", () {
    var favorites = Favorites();
    var number = 34;

    test("A new item should be added", () {
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test("Item should be removed", () {
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
