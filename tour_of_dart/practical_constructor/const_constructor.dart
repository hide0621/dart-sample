// 定数コンストラクタについて

// 定数コンストラクタはコンパイル時に定数値を生成して、それを使い回すことができる

// ただしその場合は、コンストラクタに渡す値（実引数）が同じであることが条件となる

// このオブジェクトの生成方法はオブジェクト生成後、そのオブジェクトの状態が変更されることがない場合に使われる（例えば、座標などの不変なオブジェクトを生成する際に使われる）

class ImuutablePoint {
  final int x;
  final int y;
  const ImuutablePoint(this.x, this.y);
}

void main() {
  // 定数コンストラクタを使うと、同じ値を持つインスタンスは同じインスタンスを再利用する（故にp1とp2は同じインスタンス）
  var p1 = const ImuutablePoint(1, 2);
  var p2 = const ImuutablePoint(1, 2);

  // 一方、constキーワードを使わない場合は、同じ値を持つインスタンスでも別のインスタンスが新しく生成される（故にp1とp3は別のインスタンス）
  var p3 = ImuutablePoint(1, 2);

  print(identical(p1, p2)); // true
  print(identical(p1, p3)); // false
}
