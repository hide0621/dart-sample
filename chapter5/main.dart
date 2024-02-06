
void main() {

  int num = 0;

  // こんな書き方もできる

  num += 10;

  print(num);

  num -= 5;

  print(num);

  num *= 2;

  print(num);

  // /演算子はdouble型の変数に使用するので、int型の変数には使用できない（あまりが0なら使えるが...）
  // num /= 4; // int型に変換できないとのエラーが出る

  double num2 = 4.0;

  num2 /= 4;

  print(num2);

}