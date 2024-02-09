int practiceNullSafety() {
  // int? は null が許容される型
  int? x = 10;
  int? y;
  int z = 0;
  // int a = null; // dartはnullを許容しないのでエラーになる

  if (x != null) {
    z = x;
  }

  if (y != null) {
    z = y;
  }

  return z;
}

int sumNullSafety1(int? x, int? y) {
  if (x == null || y == null) {
    return 0;
  }

  return x + y;
}

// こうとも書ける
int sumNullSafety2(int? x, int? y) {
  // x と y が null の場合は 0 を返す、そうでないなら x + y を返す
  return x == null || y == null ? 0 : x + y;
}

// こうとも書ける
int sumNullSafety3({int? x, int? y}) {
  // x と y が null の場合は 0 を返す、そうでないなら x + y を返す
  return (x ?? 0) + (y ?? 0);
}

// こうとも書ける
// こうすればnullを許容せず、デフォルト値を設定できる
int sumNullSafety4({int x = 0, int y = 0}) {
  return x + y;
}

// こうとも書ける
// こうすればnullを許容せず、デフォルト値を設定できる
int sumNullSafety5({int x = 0, int y = 0}) => x + y;

// こうとも書ける
// こうすればnullを許容せず、デフォルト値を設定できる
int sumNullSafety6([int x = 0, int y = 0]) {
  return x + y;
}

// こうとも書ける
// こうすればnullを許容せず、デフォルト値を設定できる
int sumNullSafety7([int x = 0, int y = 0]) => x + y;
