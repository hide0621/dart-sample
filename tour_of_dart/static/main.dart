import 'static.dart';

void main() {
  var p = Person('Taro');
  print(p.name);

  var p2 = Person('Jiro');

  Person.showAge();
  Person.showName(p2);

  p2 = p;

  // Go言語的に言うと、p2はpからポインタ（参照先のメモリアドレス）を渡されているので、同じメモリアドレスを共有している
  // 上記のことを「参照渡し（ポインタ渡し）」という
  // そのため、p2のnameを変更すると、pのnameも変更される
  Person.showName(p2);

  p2.name = 'Saburo';

  Person.showName(p);
}
