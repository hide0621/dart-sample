void practiceFor() {
  // 1. for loop
  for (var i = 0; i < 5; i++) {
    print('for loop: $i');
  }

  // 2. for-in loop list
  var list = [1, 2, 3, 4, 5];
  for (var i in list) {
    print('for-in loop: $i');
  }

  // こうとも書ける
  for (var i = 0; i < list.length; i++) {
    print('for-in loop: ${list[i]}');
  }

  // for-in loop map
  var map = {'name': 'Dart', 'age': 25};
  for (var value in map.values) {
    print('for-in loop map: $value');
  }

  var map2 = {'name': 'Dart', 'age': 25};
  for (var key in map2.keys) {
    print('for-in loop map: $key');
  }

  // for-in loop set
  var set = {1, 2, 3, 4, 5};
  for (var i in set) {
    print('for-in loop set: $i');
  }

  // 3. forEach loop
  list.forEach((i) => print('forEach loop: $i'));
}
