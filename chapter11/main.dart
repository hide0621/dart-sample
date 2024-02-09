import 'null_safety.dart';

void main() {
  print(practiceNullSafety());
  print(sumNullSafety1(null, null));
  print(sumNullSafety2(null, null));
  print(sumNullSafety3(x: null, y: null));
  //nullは渡せないのでエラーになる
  // print(sumNullSafety4(x: null, y: null));
  print(sumNullSafety4());
  print(sumNullSafety5());
  print(sumNullSafety6());
  print(sumNullSafety7());
}
