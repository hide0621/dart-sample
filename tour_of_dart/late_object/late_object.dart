class ExpensiveObject {
  ExpensiveObject() {
    // コンストラクタが呼び出されたら以下の処理も実行される
    print('ExpensiveObject created');
  }
}

class MyClass {
  late ExpensiveObject expensiveObject;

  MyClass() {
    // コンストラクタが呼び出されたら以下の処理も実行される
    print('MyClass created');
  }

  void initializeExpensiveObject() {
    expensiveObject = ExpensiveObject();
  }
}
