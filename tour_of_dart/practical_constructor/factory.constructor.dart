// factoryコンストラクタについて

// factoryコンストラクタは、クラスのインスタンスを返すメソッドを作成するために使用されます。

// このコンストラクタは、サブクラス（具象クラス）のインスタンスを返すために使用されます。

// これはデザインパターンの一種で、オブジェクトの作成をサブクラスに委譲することで、

// クラスのインスタンス化を抽象化するこどができる

// 別の表現で言えば、具象が抽象（インターフェース）に依存するようにして、コードが疎結合になるようにしている

// そうすればコードの変更容易性も高まり、メンテナンス性や可読性も高まり、Appのアーキテクチャーも掴みやすくなる

// これはGo言語のファクトリー関数（戻り値にインターフェースを用いるコンストラクタ関数）と同じで、あれを使うことでダックタイピングが簡単に実現できる

// このことは、Dartのfactoryコンストラクタでも同じで、インターフェースを介してダックタイピングにオブジェクトを生成できる

// 抽象クラスなインターフェース
abstract class Shape {
  // ここがfactoryコンストラクタ
  factory Shape(String type) {
    if (type == 'circle') return Circle();
    if (type == 'square') return Square();
    throw 'Can\'t create $type';
  }
}

class Circle implements Shape {
  Circle() {
    print('Circle object created');
  }
}

class Square implements Shape {
  Square() {
    print('Square object created');
  }
}

void main() {
  final circle = Shape('circle');
  final square = Shape('square');

  // throws an error because there is no triangle factory
  // Can't create triangle
  // final triangle = Shape('triangle');
}
