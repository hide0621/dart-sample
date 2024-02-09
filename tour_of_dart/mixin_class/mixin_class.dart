mixin AndroidEngineer {
  bool skill = true;
  void implementAndroidApp() {
    print('Implementing Android App');
  }
}

mixin IOSEngineer {
  bool skill = true;
  void implementIOSApp() {
    print('Implementing IOS App');
  }
}

class Person {
  String name;
  Person(this.name);
}

class FlutterEngineer extends Person with AndroidEngineer, IOSEngineer {
  FlutterEngineer(String name) : super(name);

  bool get isAndroidEngineer => skill;
  bool get isIOSDeveloper => skill;
}
