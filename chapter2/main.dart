
void main() {

  var nameMap = {
    'first': 'John',
    'last': 'Doe'
  };

  print(nameMap);

  print(nameMap['first']);

  print("-------------------");

  // Add a new key-value pair
  nameMap['middle'] = 'William';

  print(nameMap);

  print("-------------------");

  // Remove a key-value pair
  nameMap.remove('middle');

  print(nameMap);

  print("-------------------");

  // for文でkeyを取得
  for (var key in nameMap.keys) {
    print(key);
  }

  print("-------------------");

  // for文でvalueを取得
  for (var value in nameMap.values) {
    print(value);
  }

}