import 'private.dart';

void practice2() {
  // フィールドがプライベートでもコンストラクタで初期化はできる
  var user = User(
    'Taro',
    'taro@hoge',
    'password',
  );

  // プライベート変数には直接アクセスできない
  // print(user._name); // エラー

  // ゲッターを使って参照する
  print(user.name); // Taro
  print(user.email); // taro@hoge
  print(user.password); // password

  // セッターを使って変更する
  user.name = 'Jiro';
  user.email = 'jiro@hoge';
  user.password = 'newpassword';

  // ゲッターを使って参照する
  print(user.name); // Jiro
  print(user.email); // jiro@hoge
  print(user.password); // newpassword
}
