// ラムダ2 : 関数を変数に格納し、後で使用する場合

var printNumber = (int number) {
  print('The number is $number');
};

void main() {
  for (var i = 0; i < 10; i++) {
    printNumber(i);
  }
}
