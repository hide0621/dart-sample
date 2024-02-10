/*
  コールバック関数とは、ある関数（親関数）が別の関数（コールバック関数）を引数として受け取り、
  その内部で呼び出す関数のことを指します。
  コールバック関数は、親関数の実行が一定のポイントに達したとき、
  または特定のイベントが発生したときに実行されます。

  コールバック関数は、非同期処理やイベント駆動プログラミングでよく使用されます。
  また、配列の各要素に対する操作
  （例えば、Array.prototype.mapやArray.prototype.filterなど）を行う際にも使用されます。
*/

void myFunction(void Function() callback) {
  print('Before callback');
  callback();
  print('After callback');
}

void main() {
  myFunction(() {
    print('Inside callback');
  });
}

// 上記の出力はこうなる

// Before callback
// Inside callback
// After callback
