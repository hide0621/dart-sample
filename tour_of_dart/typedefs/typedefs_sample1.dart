// Typedefsについて

// typedefは、関数型のエイリアスを作成するためのキーワードです。

// 以下の例では、関数型のエイリアスを作成しています。

typedef Compare = int Function(int a, int b);

// このようにして作成したCompere型は、int型の引数を2つ受け取り、int型の値を返す関数型のエイリアスです。

int sort(int a, int b, Compare compare) {
  return compare(a, b);
}

void main() {
  // 以下のようにして、関数型のエイリアスを使用することができます。（Compare型のオブジェクトを生成）
  Compare compare = (int a, int b) => a - b;
  print(sort(2, 1, compare)); // 1
}
