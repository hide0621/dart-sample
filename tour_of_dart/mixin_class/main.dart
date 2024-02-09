import 'mixin_class.dart';

/*
  継承（extends）:

  継承は、一つの基底クラスから新しいクラスを作成するために使用されます。新しいクラス（サブクラス）は基底クラス（スーパークラス）のすべてのメソッドとフィールドを継承します。
  Dartでは、一つのクラスは一つのクラスのみを継承できます（単一継承）。

  ミキシン（mixin）:

  ミキシンは、複数のクラスからメソッドやフィールドを再利用するための方法です。ミキシンはwithキーワードを使用してクラスに追加されます。
  ミキシンは、複数のクラスに同じ機能を提供するために使用できます。これにより、コードの再利用性が向上します。
  ミキシンは、継承と異なり、複数のミキシンを一つのクラスに適用することができます。

  結論：
  したがって、継承は「is-a」の関係（例：EmployeeはPersonである）を表現し、ミキシンは「has-a」の関係（例：CarはEngineを持っている）を表現するのに適している。
*/

void main() {
  var f = FlutterEngineer('Taro');
  f.implementAndroidApp();
  f.implementIOSApp();

  print(f.isAndroidEngineer); // true
  print(f.isIOSDeveloper); // true
}
