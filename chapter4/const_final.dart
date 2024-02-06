// constとfinalの違い

// constもfinalも定数ではあるが以下の違いがある

void practice1() {
  // constはコンパイル時に評価される（型が決まる？）定数(コンパイル定数)
  const int a = 10;
  const int b = 20;
  const int c = a + b;
  print(c); // 30

  // finalは実行時に評価される（型が決まる？）定数（実行時定数？）
  final int d = 10;
  final int e = 20;
  final int f = d + e;
  print(f); // 30

  // 変数も実行時に評価されるので、finalで定数化された定数に代入が可能（その逆も可能だが、変数が定数化している訳ではない）
  var g = 10;
  final int h = g;
  print(h); // 10

  final i = 20;
  var j = i;
  print(j); // 20

  // 変数が定数化している訳ではないので、変数の値の変更が可能
  j = 30;
  print(j); // 30

  // finalで定数化された変数なので値の変更が不可能
  // h = 30; // Error: Setter not found: 'h'.

  // constは実行時に評価されるので、constで定数化された定数に代入は不可能
  // const int k = g; // Error: Constant variables can't be assigned a value.
}
