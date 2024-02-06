import 'product.dart';

void practice3() {
  // 以下のように、Productクラスのインスタンスを生成せずにアクセスできる
  print(Product.name); // product
  print(Product.price); // 0
  print(Product.quantity); // 0
  print(Product.totalPrice()); // 0.0
}
