class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void showName() {
    print('Name: $name');
  }

  void showAge() {
    print('Age: $age');
  }

  int sum(int a, int b) {
    return a + b;
  }

  @override
  // noSuchMethodメソッドは、未定義のメソッドが呼び出された際に実行される
  // ただし呼び出し元のオブジェクト（レシーバー）がdynamic型か、そのオブジェクトが未実装のメソッドを持っていて、
  // かつnoSuchMethodメソッドがオーバーライドされていて、ObjectクラスのnoSuchMethod と実装が異なっている場合に限る
  void noSuchMethod(Invocation invocation) {
    print('No such method: ${invocation.memberName}');
  }
}

class Employee extends Person {
  String company;

  // super部分は親クラス（Person）のコンストラクタを呼び出している
  // ただしPersonクラスのコンストラクタに渡された値を参照している訳ではないので注意！
  Employee(String name, int age, this.company) : super(name, age);

  void showCompany() {
    print('Company: $company');
  }

  @override
  void showName() {
    print('Employee Name: $name');
  }

  @override
  // オーバーライドの際は、親クラスのメソッドの戻り値と引数の型、引数の数や順番、メソッド名（これらをシグネチャーと言う）を変更することはできない
  int sum(int a, int b) {
    return a + b + 100;
  }

  // なんとabstract classでなくても抽象メソッドは持てる
  void hoo() {}
}
