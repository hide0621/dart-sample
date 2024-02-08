// enumについて

// enumは列挙型を定義するためのキーワード

// enumを使えば、参照先にない値を指定することができないので、タイポによるバグを防ぐことができる

// 以下はenum型で定義されたAnimal型を使った例（Go言語の独自型に近い書き方）

enum Animal { cat, dog, bird, fish }

void practice2() {
  var animal = Animal.cat;

  switch (animal) {
    case Animal.cat:
      print('animal is cat');
      break;
    case Animal.dog:
      print('animal is dog');
      break;
    case Animal.bird:
      print('animal is bird');
      break;
    case Animal.fish:
      print('animal is fish');
      break;
    default:
      print('animal is not cat, dog, bird or fish');
  }
}
