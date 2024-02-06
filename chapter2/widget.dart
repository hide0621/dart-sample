// widget : flutterにおけるUIを作るためのコンポーネントであり、データ型である

// 例えば、Containerはwidgetであり、Textもwidgetである

// FlutterはUIフレームワークであり、widgetを使ってUIを構築する

// widgetはflutterプロジェクトでのみ使える

// あとからflutterプロジェクト化することもできる

/*
  手順1: まず、新しいFlutterプロジェクトを作成します。これは、プロジェクトのルートディレクトリでflutter create .コマンドを実行することで行います。
  手順2: 次に、既存のDartプロジェクトからコードを新しいFlutterプロジェクトにコピーします。特に、libディレクトリ内のDartファイルを新しいプロジェクトの同じディレクトリにコピーします。
  手順3: 既存のDartプロジェクトが依存していたパッケージがある場合、それらを新しいFlutterプロジェクトのpubspec.yamlファイルに追加します。
  手順4: 最後に、flutter pub getコマンドを実行して、新しいプロジェクトの依存関係を更新します。
*/

// import 'package:flutter/material.dart';
//
// void practice_widget() {
//
//   Widget widget = Container(
//     color: Colors.blue,
//     width: 100,
//     height: 100,
//   );
//   print(widget);
// }
