import 'cascade_notation.dart';

// カスケード記法（..）について

/*
  カスケード記法は、以下のようなシーンで利用されます：

  同じオブジェクトに対する一連のメソッド呼び出しを行う場合
  同じオブジェクトの複数のプロパティを設定する(値を与える)場合
  ビルダーパターンなど、メソッドチェーンを使用する設計パターンを実装する場合
*/

void main() {
  var myObject = MyClass()
    ..propertyA = 'A'
    ..propertyB = 'B'
    ..methodA() // Method A
    ..methodB(); // Method B
  print(myObject.propertyA); // A
  print(myObject.propertyB); // B
}
