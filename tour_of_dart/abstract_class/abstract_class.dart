// 抽象クラスは未実装のメソッドを持ち、継承先で実装を強制させる
// その点でGo言語のインターフェースと似ている

abstract class Animal {
  String name; // Abstract classes can have fields
  Animal(this.name);
  void makeSound();
}

class Dog extends Animal {
  int age;
  Dog(String name, this.age) : super(name);
  @override // This annotation is optional
  void makeSound() {
    print('$name is barking');
  }

  void printAge() {
    print('Age: $age');
  }
}
