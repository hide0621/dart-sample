// superキーワードは親クラスのメソッドやコンストラクタを呼び出すために使用され、
// 初期化リスト「:」の後に使用されます。

class Animal {
  String name;

  Animal(this.name);

  void printName() {
    print('The animal name is $name');
  }
}

class Dog extends Animal {
  // 子クラスのコンストラクタの引数が親クラスのコンストラクタに渡され、
  // その後に親クラスのコンストラクタが先に実行されて初期化され、その後に子クラスのコンストラクタが実行されて初期化される
  // こうすることで子クラスは親クラスのメソッドやプロパティを利用することができる
  Dog(String name) : super(name);

  void bark() {
    print('$name is barking');
  }
}

void main() {
  var dog = Dog('Pochi');
  dog.printName();
  dog.bark();
}
