// Future : 時間のかかる処理に使う

// async : 非同期処理を行う関数に付ける

// await : 非同期処理が終わるまで待つ →　同期処理化させる?

// 例： ５秒後に「Hello, Future!」と表示する

Future<void> async_await() async {
  print('Start');
  // 以下の非同期処理が終わるまでasync_await関数が待つ
  await Future.delayed(Duration(seconds: 5), () {
    print('Hello, Future!');
  });
  // 上記の非同期処理の処理が終わったら、以下の処理が実行される
  print('End');
}

// こう書くと、非同期処理が終わるまで待たない

Future<void> async_await2() async {
  print('Start');
  // 以下の非同期処理が実行されるよりも前に「End」が表示される
  Future.delayed(Duration(seconds: 5), () {
    print('Hello, Future!');
  });
  // 以下の処理が非同期処理よりも前に実行される
  print('End');
}
