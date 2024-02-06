import 'user.dart';

void main() {
  // オブジェクト化
  var user1 = user('John', 30);
  user1.showOutput();

  print('-------------------');

  // Go言語のテーブルドリブン的なオブジェクトの生成
  var users = [
    user('John', 30),
    user('Adam', 35),
    user('Harry', 25),
  ];

  // ループで出力
  for (var i = 0; i < users.length; i++) {
    users[i].showOutput();
  }
}
