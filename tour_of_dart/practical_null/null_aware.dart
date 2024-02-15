// null認識演算子（?.）は、オブジェクトがnullでない場合のみメソッドやプロパティを呼び出すことができます。

// もしオブジェクトがnullであった場合、その後のメソッドやプロパティの呼び出しはスキップされ、全体の式の結果はnullになります

// Dart言語における「?」は、null許容型を宣言するための修飾子であり、似ているが別物なので注意

// ただ、このnull認識演算子もいまいち使い所がわからない...

class MyClass {
  String? myMethod() {
    return "Hello, World!";
  }
}

String? nullableString;

void main() {
  MyClass? myObject = MyClass();
  String? result = myObject?.myMethod();

  //Warning: Operand of null-aware operation '?.' has type 'MyClass' which excludes null.
  //  - 'MyClass' is from 'null_aware.dart'.
  //   String? result = myObject?.myMethod();
  // 上記のような文言が出るが、これは警告であってエラーではないので、Exit code 0（Status Code 0） で終了する
  print(result); // Hello, World!

  //nullableStringはnullなので、lengthプロパティは呼び出されず、nullが出力される
  print(nullableString?.length); // null
}
