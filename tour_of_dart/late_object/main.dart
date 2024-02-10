import 'late_object.dart';

// 遅延初期化は以下のようなシーンで使われる

/*
    リソースが重いオブジェクトの初期化を遅らせる
    初期化に時間がかかるオブジェクトを後回しにする
    必要になるまでオブジェクトの初期化を遅らせる
*/

void main() {
  var myClass = MyClass();
  // ここではまだExpensiveObjectは初期化されていません。

  myClass.initializeExpensiveObject();
  // ここでExpensiveObjectが初期化されます。
}
