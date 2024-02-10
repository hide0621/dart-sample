// ラムダ3 : 関数が一時的に必要で、再利用する予定がない場合

// 例１ elementsが一時的に必要な関数

var list = ['apples', 'bananas', 'oranges'];

// 例２　numberが一時的に必要な関数

var numberList = [1, 2, 3, 4, 5];

void main() {
  list.forEach((elements) {
    print(elements);
  });

  var evenNumbers = numberList.where((number) {
    return number % 2 == 0;
  }).toList();

  print(evenNumbers);
}
