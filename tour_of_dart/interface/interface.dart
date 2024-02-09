// dartでは全てのクラスは暗黙的にインターフェースを実装している

// インターフェースを定義する
class Person {
  // _nameはプライベート変数であり、外部からアクセスできず、getterを使用してアクセスする
  // プライベート変数はインターフェイスには含まれない
  final _name;

  // コンストラクタもインターフェイスには含まれない
  Person(this._name);

  // インターフェースにあるメソッドは必ずしも全てが抽象メソッドである必要はない

  // このメソッドのシグネチャーはインターフェイスに含まれ、実装先でオーバーライドする必要がある
  String greet(String who) => 'Hello, $who. I am $_name';
}

// インターフェースを実装する
class Impostor implements Person {
  // インターフェイスに含まれるメソッドをオーバーライドする
  String greet(String who) => 'Hi $who. Do you know who I am?';
  // インターフェイスに含まれないメソッドを追加する
  String get _name => '';
}

// インターフェースを実装する
// インターフェース内の実装の必要があるメソッド（抽象メソッドだけでなく、すでに実装されているメソッドも）を実装しないとエラーになる
// class Taro implements Person {
//   // String greet(String who) => 'Hello, $who. I am Taro';
//   String get _name => 'Taro';
// }
