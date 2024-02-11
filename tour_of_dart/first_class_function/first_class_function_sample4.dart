// 例４：　関数をデータ構造（リストやマップなど）に格納する

void main() {
  // 以下の例では、関数をリストに格納しています。

  // 以下の例は、その最もシンプルな形です。

  // ただしDartでは、リストの要素に異なる型を混在させることはできません。
  // つまり、以下のようなことはできません。
  // int型の関数オブジェクトとString型の関数オブジェクトは同じリストに格納できません。

  // そのため、同じ型の関数だけをリストに格納する必要があります。

  var printNumber = (int number) {
    print('Number is: $number');
  };

  var printAnotherNumber = (int number) {
    print('Another number is: $number');
  };

  var functionList = [printNumber, printAnotherNumber];

  functionList[0](5); // Number is: 5
  functionList[1](100); // Another number is: 100

  // 上記のコードを以下のように書き換えることができます。

  // var functionList = [
  //   (int number) {
  //     print('Number is: $number');
  //   },
  //   (int number) {
  //     print('Another number is: $number');
  //   }
  // ];
  //
  // functionList[0](5); // Number is: 5
  // functionList[1](100); // Another number is: 100

  // また、以下のようにも書き換えることができます。（Go言語の無名関数の呼び出し方と同じ）

  // [
  //   (int number) {
  //     print('Number is: $number');
  //   },
  //   (int number) {
  //     print('Another number is: $number');
  //   }
  // ][0](5); // Number is: 5
  // [
  //   (int number) {
  //     print('Number is: $number');
  //   },
  //   (int number) {
  //     print('Another number is: $number');
  //   }
  // ][1](100); // Another number is: 100

  // forEachメソッドを使ってこんなこともできます。

  // [
  //   (int number) {
  //     print('Number is: $number');
  //   },
  //   (int number) {
  //     print('Another number is: $number');
  //   }
  // ].forEach((element) {
  //   element(5); // Number is: 5 // Another number is: 5
  // });

  // また、以下のようにも書き換えることができます。

  // [
  //   (int number) {
  //     print('Number is: $number');
  //   },
  //   (int number) {
  //     print('Another number is: $number');
  //   }
  // ].forEach((element) => element(5)); // Number is: 5 // Another number is: 5

  // 上記2つのforEachの書き方はつまるところ、この変形です
  // var printNumber = (int number) {
  //   print('Number is: $number');
  // };
  //
  // var printAnotherNumber = (int number) {
  //   print('Another number is: $number');
  // };
  //
  // var functionList = [printNumber, printAnotherNumber];
  //
  // functionList.forEach((element) {
  //   element(5); // Number is: 5 // Another number is: 5
  // });
}
