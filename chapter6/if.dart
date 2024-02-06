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
    // そもそもAが10でない場合
    print('a is not 10');
  }
}

void practice3() {
  var a = 10;
  var b = 20;
  if (a == 10 && b == 20) {
    // Aが10かつBが20の場合
    print('a is 10 and b is 20');
  } else if (a == 10 && b != 20) {
    // Aが10かつBが20でない場合
    print('a is 10 and b is not 20');
  } else if (a != 10 && b == 20) {
    // Aが10でないかつBが20の場合
    print('a is not 10 and b is 20');
  } else {
    // そもそもAが10でない場合
    print('a is not 10');
  }
}

void practice4() {
  var a = 10;
  var b = 20;
  if (a == 10 || b == 20) {
    // Aが10またはBが20の場合
    print('a is 10 or b is 20');
  } else {
    // そもそもAが10でもBが20でもない場合
    print('a is not 10 and b is not 20');
  }
}
