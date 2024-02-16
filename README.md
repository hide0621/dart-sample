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

# コールバック関数について

コールバック関数とは、ある関数（親関数）が別の関数（コールバック関数）を引数として受け取り、

親関数の内部で呼び出す関数（親関数に引数として渡された関数）のことを指します。

コールバック関数は、親関数の実行が一定のポイントに達したとき、

または特定のイベントが発生したときに実行されます。（`callback(引数があったり、無かったり)`とのような書き方で呼び出す）

コールバック関数は、非同期処理やイベント駆動プログラミングでよく使用されます。

また、配列の各要素に対する操作
  
（例えば、`Array.prototype.map`や`Array.prototype.filter`など）を行う際にも使用されます。

# superと初期化リスト「：」について

`super`キーワードは親クラスのメソッドやコンストラクタを呼び出すために使用され、

`初期化リスト「:」`の後に使用されます。

**子クラスのコンストラクタの引数が親クラスのコンストラクタに渡され**、

**その後に親クラスのコンストラクタが先に実行されて初期化され、その後に子クラスのコンストラクタが実行されて初期化される**

**こうすることで子クラスは親クラスのメソッドやプロパティを利用することができる**

# 非同期処理について

**Future**

Dartの*非同期操作を表すクラス*で、*未来のある時点で利用可能になる値*を表します。

非同期操作が完了すると、その結果が`Futureオブジェクト`に格納されます。

**async**

*非同期関数*を定義するためのキーワードです。

`async`が付いた関数は、必ず`Future`を返します。

**await**

*非同期関数内でのみ使用できる*キーワードです。

`await`が付いた式は、**その式が完了する(Futureの結果が利用可能になる)まで非同期関数の実行を一時停止します。**

この3つのステートメントにより非同期処理が簡単に実装でき、

*非同期処理が同期処理のように直列的に書け、コードが読みやすくなります。*

---

**非同期処理**

上記3つのステートメントを用いて表現されるこの処理については、

**非同期操作**（**ネットワークリクエスト、データベースへのクエリ、ファイルの読み書きなどの特に時間が掛かる操作**）を扱うために使用されることが多い。

非同期操作は、**メインのプログラムの実行をブロックせずに、バックグラウンドで実行されます。**

これにより、メインのプログラムは他のタスクを続行でき、メインのプログラムの実行をスムーズに行うことができます。

非同期操作が完了すると、その結果は`Futureオブジェクト`に格納され、`await`キーワードを使用してその結果を取得できます

非同期処理がない場合、特に時間がかかる操作（例えば、ネットワークリクエストやデータベースへのクエリなど）が行われると、

**その操作が完了するまでメインのプログラムの実行がブロックされます。**

これは、**その操作が完了するまで他のタスクを実行できないことを意味します。**

したがって、非同期処理を使用しないと、メインのプログラムの実行が重くなり、

**最悪の場合、アプリケーションが応答しなくなる可能性があります。**


