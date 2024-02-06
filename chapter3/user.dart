class user {
  String name;
  int age;

  // これがコンストラクター
  user(this.name, this.age);

  // このクラスに紐づくメソッド
  void showOutput() {
    print(name);
    print(age);
  }
}
