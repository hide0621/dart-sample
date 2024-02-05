import 'methods.dart'; // 相対パスでファイルのパスを指定する

void main() {

  printNumber1();
  printNumber2(2);

  var number = printNumber3(3);
  print(number);

  print(add(4, 5));

  var result = addAndSub(6, 7);
  print(result[0]);
  //両方出すならこう（ただしリストになる）
  print(result);

  var result2 = addAndSub2(8, 9);
  print(result2['add']);
  //両方出すならこう（ただしマップになる）
  print(result2);

  var result3 = addAndSub3(10, 11);
  print(result3.add);
  //両方出すならこう（ただし文字列になる）
  print("${result3.add}, ${result3.sub}");

  // メソッドの戻り値を引数を2つ以上持つメソッドに渡して使うなら(こうすれば型を守れる)...
  var x = result3.add;
  var y = result3.sub;

  print(hoge(x, y));

  // 名前付き引数を使うなら（引数との対応関係を明示的に示す）
  var z = printNumber4(x: 12, y: 13);
  print(z);

  var z2 = printNumber5(x: 14, y: 15);
  print(z2);

  var z3 = printNumber6(x: 16, y: 17);
  print(z3);

  // 片方だけ渡すことも可能
  var z4 = printNumber6(x: 18);
  print(z4);

  // オプション引数を使うなら
  var z5 = printNumber7(19);
  print(z5);

  var z6 = printNumber8(20);
  print(z6);

  var z7 = printNumber9(21);
  print(z7);

  // メソッドfujiを試す
  var z8 = fuji(x: 20);
  print(z8);

  // メソッドfujisanを試す
  var z9 = fujisan(y: 21);
  print(z9);

  // アロー関数を試す
  var result4 = add2(1, 3);
  print(result4);
  printNumber10();

}