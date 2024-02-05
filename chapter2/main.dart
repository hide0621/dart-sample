
void main() {

  var nameList = ["taro", "Doe", "jiro", "Doe"];

  for (var name in nameList) {
    print(name);
  }

  print("-----");

  // インデックスを指定して要素を追加
  nameList.insert(1, "hanako");

  for (var name in nameList) {
    print(name);
  }

  print("-----");

  // 要素を追加
  nameList.add("saburo");

  for (var name in nameList) {
    print(name);
  }

  print("-----");

  // インデックスを指定して要素を削除
  nameList.removeAt(0);

  for (var name in nameList) {
    print(name);
  }

  print("-----");

  // 要素を削除(ただしこの場合、同じ名前の要素が複数ある場合は一番若いインデックスの要素が削除される
  nameList.remove("Doe");

  for (var name in nameList) {
    print(name);
  }

}