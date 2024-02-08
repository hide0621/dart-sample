// try catch の例

void practiceTryCatch() {
  try {
    int result = 12 ~/ 0;
    print('result: $result');
  } catch (e) {
    print('エラーが発生しました: $e');
  }
}
