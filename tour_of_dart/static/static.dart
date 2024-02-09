class Person {
  String name;

  Person(this.name);

  // Staticな変数やメソッドはdartでは何個でも作れる

  // Static化した変数はクラス名を使ってアクセスできる
  static int age = 18;

  // Static化したメソッドもクラス名を使ってアクセスできる
  static void showAge() {
    print(age);
  }

  // Static化したメソッドはStatic化していない変数にアクセスできない
  // static void showName() {
  //   print(name);
  // }

  // Static化したメソッドでStaticでない変数にアクセスする場合は、オブジェクト化が必要
  // 引数の部分でオブジェクト化している
  static void showName(Person person) {
    print(person.name);
  }
}
