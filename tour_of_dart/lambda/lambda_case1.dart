// ラムダ１：コールバック関数として、他の関数に関数を渡す場合

void myFunction(void Function(int) callback) {
  for (var i = 0; i < 10; i++) {
    callback(i);
  }
}

void main() {
  myFunction((int i) {
    print('The number is $i');
  });
}
