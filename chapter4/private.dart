class User {
  // 以下のフィールドはプライベート化されているので、別のクラスからは参照できない
  String _name;
  String _email;
  String _password;

  User(this._name, this._email, this._password);

  // 故にゲッターを使って参照する
  // ゲッターはgetキーワードを使って宣言する
  // String get name => _name;というコードは、nameという名前のゲッターを定義しており、このゲッターは_nameというプライベート変数の値を返す
  // nameはメソッド名ではなくフィールド名であり、具体的には、nameはゲッター（getter）と呼ばれる特殊なメソッドの名前
  String get name => _name;
  String get email => _email;
  String get password => _password;

  // セッターも同様に定義できる
  // セッターはsetキーワードを使って宣言する
  // セッターは値を受け取り、それをプライベート変数に代入する
  // セッターはvoidを返す
  set name(String name) {
    _name = name;
  }

  set email(String email) {
    _email = email;
  }

  set password(String password) {
    _password = password;
  }
}
