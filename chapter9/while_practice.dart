// while文の例

void practiceWhile() {
  var count = 0;
  while (count < 5) {
    print('count: $count');
    count++;
  }
}

// do-while文の例
// do-while文は条件式の評価を後に行うため、以下のコードの場合はprint文が1回は実行される
void practiceDoWhile() {
  var count = 0;
  do {
    print('count: $count'); // 0
    count++;
  } while (count < 0);
}

void practiceWhileBreak() {
  var count = 0;
  while (true) {
    print('count: $count');
    count++;
    if (count >= 3) {
      break; // countが3以上になったらループを抜ける
    }
  }
}

void practiceWhileContinue() {
  var count = 0;
  while (count < 5) {
    count++;
    if (count % 2 == 0) {
      continue; // countが偶数の場合は以下のprint文の処理をスキップして、次のループに移る
    }
    print('count: $count');
  }
}
