// nullアサーション演算子は「!」を使って、その変数やオブジェクトがnullでないことを明示的に示すことができます。

// nullであった場合はランタイムエラーが発生するので、

//nullアサーションは、変数がnullでないことを確信している場合にのみ使用すべき

// そうでないと予期しないランタイムエラーの原因になるので...

// ただイマイチこのnullアサーション演算子の使いどころがわからない...

void main() {
  // String? nullableString;
  // String nonNullableString1 = nullableString!; // throws an runtime error
  // print(nonNullableString1);

  // 下記のコードのように変数やオブジェクトがnullでないことが明確である場合に使う
  String nonNullableString2 = 'Hello, World!';

  // Warning: Operand of null-aware operation '!' has type 'String' which excludes null.
  //   print(nonNullableString2!);
  // 上記のような文言が出るが、これは警告文であり、エラー文ではないので、Exit code 0（Status Code 0）で終了する
  print(nonNullableString2!);
}
