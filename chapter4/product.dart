// classのstaticメンバーについて
// 本来productと命名されたクラスなのでstaticなのも変だが、勉強用として...

// staticはGo言語でいうと値型の扱われ方に似ているような...

// ということは、非staticはGo言語でいうとポインタ型の扱われ方に似ているのかな？

class Product {
  // 以下のフィールドをstaticにすることで、productクラスのインスタンスを生成せずにアクセスできる
  static String name = 'product';
  static int price = 0;
  static int quantity = 0;

  // 以下のメソッドもstaticにすることで、productクラスのインスタンスを生成せずにアクセスできる
  static double totalPrice() {
    return 0.0;
  }
}
