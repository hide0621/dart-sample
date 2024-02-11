// 例２：　変数に関数を渡す

// 今回は、関数を変数に代入して、その変数を関数の引数として渡す例です。

void myFunction(void Function(int) callback) {
  callback(10);
}

void main() {
  // 関数を変数に渡す
  var myCallback = (int number) {
    print('The number is $number');
  };

  // その変数を関数の引数にする
  myFunction(myCallback);
}
