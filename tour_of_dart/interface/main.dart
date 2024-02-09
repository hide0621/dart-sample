import 'interface.dart';

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy'))); // Hello, Bob. I am Kathy
  print(greetBob(Impostor())); // Hi Bob. Do you know who I am?
}
