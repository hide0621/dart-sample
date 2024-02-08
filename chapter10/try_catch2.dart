// こうとも書ける
void practiceTryCatchCustomError() {
  try {
    int divisor = 0;
    if (divisor == 0) {
      throw FormatException('ゼロで割ることはできません');
    }
    int result = 12 ~/ divisor;
    print('result: $result');
  } catch (e) {
    // 先に出たエラーをキャッチしている（今回ならifの中のthrowの部分）
    print('エラーが発生しました: $e');
  }
}

void practiceTryCatchCustomError2() {
  try {
    int divisor = 1;
    if (divisor == 0) {
      throw FormatException('ゼロで割ることはできません');
    }
    int result = 12 ~/ divisor;
    print('result: $result'); // result: 12
  } on FormatException catch (e) {
    // FormatException のみキャッチ
    print('エラーが発生しました: $e');
  } catch (e) {
    // それ以外のエラーをキャッチ
    print('エラーが発生しました: $e');
  }
}

void practiceTryCatchCustomError3() {
  try {
    int divisor = 0;
    if (divisor == 0) {
      throw FormatException('ゼロで割ることはできません');
    }
    int result = 12 ~/ divisor;
    print('result: $result');
  } on FormatException catch (e) {
    // FormatException のみキャッチ
    print('エラーが発生しました: $e');
  } catch (e) {
    // それ以外のエラーをキャッチ
    print('エラーが発生しました: $e');
  } finally {
    // 例外の有無に関わらず実行
    print('finally ブロックが実行されました');
  }
}
