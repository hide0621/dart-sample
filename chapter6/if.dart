void practice1() {
  var a = 10;
  var b = 20;
  if (a == 10) {
    print('a is 10');
  } else if (a == 20) {
    print('a is 20');
  } else {
    print('a is not 10 or 20');
  }
}

void practice2() {
  var a = 10;
  var b = 20;
  if (a == 10) {
    if (b == 20) {
      // Aが10かつBが20の場合
      print('a is 10 and b is 20');
    } else {
      // Aが10かつBが20でない場合
      print('a is 10 and b is not 20');
    }
  } else {
    // Aが10でない場合
    print('a is not 10');
  }
}
