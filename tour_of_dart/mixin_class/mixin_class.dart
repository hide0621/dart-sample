// このクラスのメンバー（フィールドとメソッド）の使用をAppEngineerとその継承先に限定する
mixin AndroidEngineer on AppEngineer {
  bool skill = true;
  void implementAndroidApp() {
    print('Implementing Android App');
  }
}

// このクラスのメンバー（フィールドとメソッド）の使用をAppEngineerとその継承先に限定する
mixin IOSEngineer on AppEngineer {
  bool skill = true;
  void implementIOSApp() {
    print('Implementing IOS App');
  }
}

class AppEngineer {
  String name;
  AppEngineer(this.name);
}

class NonAppEngineer {
  String name;
  NonAppEngineer(this.name);
}

class FlutterEngineer extends AppEngineer with AndroidEngineer, IOSEngineer {
  FlutterEngineer(String name) : super(name);

  bool get isAndroidEngineer => skill;
  bool get isIOSDeveloper => skill;
}

// WebEngineerクラスは、NonAppEngineerクラスを継承しているため、AndroidEngineerとIOSEngineerのmixinを使用できない。
// class WebEngineer extends NonAppEngineer with AndroidEngineer, IOSEngineer {
//   WebEngineer(String name) : super(name);
//
//   bool get isAndroidEngineer => skill;
//   bool get isIOSDeveloper => skill;
// }
