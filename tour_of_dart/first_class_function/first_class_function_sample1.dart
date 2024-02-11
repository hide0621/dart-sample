// 第１級関数について

// 第１級関数とは、関数を他のデータ型と同じように扱うことができる関数のことです。

// つまり、関数もまたデータ型（Function型）であると言うこと（Go言語も同じく、関数は第１級オブジェクトとして扱える）

// 例１：　関数を引数に取る関数（callback関数）

void myFunction(String message, Function callback) {
  print(message);
  print("-------");
  callback();
}

void main() {
  myFunction('Hello', () {
    print('World');
  });
}
