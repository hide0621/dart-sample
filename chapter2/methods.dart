

void printNumber1() {
  var num = 10;
  print(num + 1);
}

void printNumber2(int num) {
  print(num + 1);
}

int printNumber3(int num) {
  return num + 1;
}

int add(int a, int b) {
  return a + b;
}

// dartはGo言語のように複数の戻り値を返す関数・メソッドをサポートしていない
// ただし、ListやMapを使って複数の値を返すことにより、それを表現することができる

// Listの場合
List<int> addAndSub(int a, int b) {
  return [a + b, a - b];
}

// Mapの場合
Map<String, int> addAndSub2(int a, int b) {
  return {'add': a + b, 'sub': a - b};
}

//またはカスタムクラスにより表現することもできる

class Result {
  int add;
  int sub;

  Result(this.add, this.sub);
}

Result addAndSub3(int a, int b) {
  return Result(a + b, a - b);
}

int hoge(int a, int b) {
  return a + b;
}

// 名前付き引数と言うものもあり、こうすれば引数の順番を気にしなくても良い
// 引数は任意で、かつ、引数の順番を気にしなくても良い場合に使う

// パターン1(どっちの引数も必須にする)
int printNumber4({required int x, required int y}) {
  return x + y;
}

// パターン2(引数に初期値を与えておく)
int printNumber5({int x = 0, int y = 0}) {
  return x + y;
}

// パターン3(nullを許容する)
// ただし、nullを許容する場合はnullチェックを忘れないように
int printNumber6({int? x, int? y}) {
  if (x == null || y == null) {
    print("xまたはyがnullです");
    return 0;
  }
  return x + y;
}

// パターン4(片方の引数だけ必須にしたり、初期値を与えたり、nullを許容することも可能)
// ただし、nullを許容する場合はnullチェックを忘れないように
int fuji ({required int x, int? y}) {
  if (y == null) {
    print("yがnullです");
    return 0;
  }
  return x + y;
}

int fujisan ({int x = 0, required int y}) {
  return x + y;
}

// オプション引数というものもある
// 引数は任意で、かつ、引数の順番は順番通りである

// パターン1(片方の引数だけ初期値を与えておく)
int printNumber7(int x, [int y = 0]) {
  return x + y;
}

// パターン2(両方の引数に初期値を与えておく)
int printNumber8([int x = 0, int y = 0]) {
  return x + y;
}

// パターン3(nullを許容する)
// ただし、nullを許容する場合はnullチェックを忘れないように
int printNumber9([int? x, int? y]) {
  if (x == null || y == null) {
    print("xまたはyがnullです");
    return 0;
  }
  return x + y;
}

// アロー関数というものもある
// これは、メソッドの処理が1行の場合に使うことができる

// 例1
int add2(int a, int b) => a + b;

// 例2
void printNumber10() => print(10);