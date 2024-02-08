// 三項演算子について
// widgetの表示を制御する際に使うことが多い(プロパティ関連)

void practice5() {
  var num = 0;
  if (num == 0) {
    print('num is 0');
  } else {
    print('num is not 0');
  }

  // 三項演算子を使って書き換える
  print(num == 0 ? 'num is 0' : 'num is not 0');

  // こうとも出来る
  num == 0 ? print('num is 0') : print('num is not 0');
}
