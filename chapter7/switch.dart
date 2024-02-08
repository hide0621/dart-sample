// switch文について

void practice1() {
  var num = 1;

  if (num == 1) {
    print('num is 1');
  } else if (num == 2) {
    print('num is 2');
  } else {
    print('num is not 1 or 2');
  }

  switch (num) {
    case 1:
      print('num is 1');
      break;
    case 2:
      print('num is 2');
      break;
    default:
      print('num is not 1 or 2');
  }

  // dartではbreakがなくても動作する

  switch (num) {
    case 1:
      print('num is 1');
    case 2:
      print('num is 2');
    default:
      print('num is not 1 or 2');
  }
}
