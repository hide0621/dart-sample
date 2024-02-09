import 'extend_class.dart';

void main() {
  var person = Person('Taro', 30);
  person.showName();
  person.showAge();
  print(person.sum(10, 20));

  // なんとemployeeオブジェクトがabstract classに紐づいたオブジェクトでなければ、抽象メソッドを実装しないままオブジェクト化できてしまう。。。

  // dynamic型で定義したオブジェクトが未定義のメソッドを呼び出すと、NoSuchMethodErrorが発生する
  dynamic employee = Employee('Jiro', 25, 'ABC Company');
  employee.showName();
  print(employee.sum(10, 20));
  print(employee.showHoge()); // No such method: Symbol("showHoge") null

  // 抽象メソッドを呼び出せてしまう。。。
  print(employee.hoo()); // null
}
