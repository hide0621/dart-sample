// 以下は関数を変数に代入して関数型のオブジェクトを生成するパターン

// int sort(int a, int b, var compare) {
//   return compare(a, b);
// }
//
// void main() {
//   var compare = (int a, int b) => a - b;
//   print(sort(2, 1, compare)); // 1
// }

// 以下はTypedefsを使用したパターン

// このコードは関数型の独自型でCompareと言う型を定義している（Go言語の独自型の定義と似ている）
// 故にこの独自型のCompare型を使用する関数型のオブジェクトは、シグネチャー（引数と戻り値の型、引数の数）の一致を強制させることができる
// それさえ守れば、処理の異なる関数型のオブジェクトを生成することも可能（これもGo言語での扱われ方に似ている）
typedef Compare = int Function(int a, int b);

int sort(int a, int b, Compare compare) {
  return compare(a, b);
}

void main() {
  Compare compare1 = (int a, int b) => a - b;
  print(sort(2, 1, compare1)); // 1

  print('-----------------');

  Compare compare2 = (int a, int b) => a + b;
  print(sort(2, 1, compare2)); // 3

  print('-----------------');

  Compare compare3 = (int a, int b) => a * b;
  print(sort(2, 1, compare3)); // 2

  print('-----------------');

  // 以下のコードは戻り値がdouble型になってしまうため、エラーが発生する
  // Typedefsにより、Compareと言う関数型の独自型の強制力が効いている証

  // Compare compare4 = (int a, int b) => a / b;
  // print(sort(2, 1, compare4));
}
