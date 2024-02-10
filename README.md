こちらの教材を使用しています

[dart udemy](https://www.udemy.com/course/flutter-dart/)

[tour of dart](https://dart.dev/language)

[dart codelabs](https://dart.dev/codelabs)

[翻訳 A tour of the Dart language +α](https://qiita.com/yana1316/items/dff227fde4cc76b1b9ab)

---

この記事も参考になりそう

[Dartの文法について学ぼう](https://qiita.com/my_programming/items/9ba25114ef217d077ca5)

# dartのnoSuchMethod()について

・noSuchMethodメソッドは、未定義のメソッドが呼び出された際に実行される

・ただし呼び出し元のオブジェクト（レシーバー）がdynamic型か、そのオブジェクトが未実装のメソッドを持っていて、かつnoSuchMethodメソッドがオーバーライドされていて、ObjectクラスのnoSuchMethod と実装が異なっている場合に限る

詳しくは以下のサイトを参照

[KotlinとJavaができる人向けDart速習 noSuchMethod()](https://qiita.com/kikuchy/items/2cce118d38fc15324b2b#nosuchmethod)

[dart　公式](https://dart.dev/language/extend#nosuchmethod)

# 継承とmixinの違いについて

継承（extends）:

  ・　継承は、一つの基底クラスから新しいクラスを作成するために使用されます。新しいクラス（サブクラス）は基底クラス（スーパークラス）のすべてのメソッドとフィールドを継承します。
  
  ・　Dartでは、一つのクラスは一つのクラスのみを継承できます（単一継承）。

  ミキシン（mixin）:

  ・　ミキシンは、複数のクラスからメソッドやフィールドを再利用するための方法です。ミキシンはwithキーワードを使用してクラスに追加されます。
  
  ・　ミキシンは、複数のクラスに同じ機能を提供するために使用できます。これにより、コードの再利用性が向上します。
  
  ・　ミキシンは、継承と異なり、複数のミキシンを一つのクラスに適用することができます。

  結論：
  
  したがって、継承は「is-a」の関係（例：EmployeeはPersonである）を表現し、ミキシンは「has-a」の関係（例：CarはEngineを持っている）を表現するのに適している。

# staticについて

以下のサイトがわかりやい

[初心者のためのJava基礎 Java static](https://zenn.dev/odentravel/books/c893bb0b7352f6/viewer/0494b3)

ただし、dartではstaticな変数やメソッドは1クラスの中で何個でも定義できるので注意

# 遅延初期化について

遅延初期化（lazy initialization）は、オブジェクトが必要になるまでその初期化を遅らせるテクニック

遅延初期化は`late`キーワードを使用して実現できる

遅延初期化は、以下のようなシーンで利用されます：

・　リソースが重いオブジェクトの初期化を遅らせる

・　初期化に時間がかかるオブジェクトを後回しにする

・　必要になるまでオブジェクトの初期化を遅らせる

# カスケード記法（..）について

カスケード記法は、以下のようなシーンで利用されます：

・　同じオブジェクトに対する一連のメソッド呼び出しを行う場合

・　同じオブジェクトの複数のプロパティを設定する(値を与える)場合

・　ビルダーパターンなど、メソッドチェーンを使用する設計パターンを実装する場合


