import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  String _message = 'Tap this button.';
  String _name = "saitamakennki.png";

  List<String> todoList = [];

  // テキストフィールドのコントローラー設定
  // コントローラーの宣言
  late TextEditingController _todoInputController;

  // コントローラーの初期化
  void initState() {
    super.initState();
    _todoInputController = TextEditingController();
  }

  // statefulオブジェクトが削除されるときに、参照を削除してくれる
  void dispose() {
    super.dispose();
    _todoInputController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '埼玉 市町村ルーレット ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.orange[300],
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,

                    children: <Widget>[
                      ConstrainedBox(
                        // constraints: BoxConstraints(
                        //   minHeight: 10.0,
                        //   maxWidth: 50.0,
                        // ),
                        constraints: BoxConstraints.expand(height: 130.0
                          // ,width: 100.0
                        ),
                        child: Image.asset('image/$_name'),
                      ),
                      // Image.asset("image/saitamashi.png"),
                      // Image.network('$_url'),
                    ],
                  )
                // width: size.width,
                // height: resultAreaHeight,
              ),
              Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        _message,
                        style: TextStyle(
                          // fontFamily: "",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.orange),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.all(8),
                constraints: BoxConstraints.expand(height: 140.0
                  // ,width: 100.0
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('              TAP!              '),
                      style: ElevatedButton.styleFrom(
                        // color: HexColor("fb0c00"),
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: _onPressed,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _todoInputController,
                  decoration: InputDecoration(hintText: '入力してください'),
                  autofocus: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 0.0, right: 0.0, bottom: 30.0, left: 0.0),
                child: RaisedButton(
                  color: Colors.teal[400],
                  textColor: Colors.white,
                  child: Text('保存'),
                  onPressed: () {
                    // 変数の変化をリアルタイムに通知する
                    setState(
                          () {
                        // 何かしらの入力があるときだけ実行
                        if (_todoInputController.text.length > 0) {
                          // 配列に入力値を追加
                          todoList.add(_todoInputController.text);
                          // テキストボックスを初期化
                          _todoInputController.clear();
                        }
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  // リストの長さを計算
                  itemCount: todoList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.only(
                          top: 0.0, right: 0.0, bottom: 0.0, left: 0.0),
                      margin: EdgeInsets.only(
                          top: 1.0, right: 0.0, bottom: 0.0, left: 0.0),
                      color: Colors.cyan[600],
                      child: ListTile(
                        leading: Icon(Icons.star),
                        title: Text(
                          // リストに表示する文字列を設定
                          ("$index : ${todoList[index]}"),
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),


              // Container(
              //   child: Column(
              //     children: [
              //       TodoListPageState()
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // DismissibleSampleState createState() {
  //   return DismissibleSampleState();
  // }
  _TodoAddPageState createState(){
    return _TodoAddPageState();
  }

  void _onPressed() {
    setState(() {
      List list = [
        '1',
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "19",
        "20",
        "21",
        "22",
        "23",
        "24",
        "25",
        "26",
        "27",
        "28",
        "29",
        "30",
        "31",
        "32",
        "33",
        "34",
        "35",
        "36",
        "37",
        "38",
        "39",
        "40",
        "41",
        "42",
        "43",
        "44",
        "45",
        "46",
        "47",
        "48",
        "49",
        "50",
        "51",
        "52",
        "53",
        "54",
        "55",
        "56",
        "57",
        "58",
        "59",
        "60",
        "61",
        "62",
        "63",
        "64",
        "65",
        "66"
      ];
      // generates a new Random object
      final _random = new Random();

      var element = list[_random.nextInt(list.length)];
      // var _url = "hogehoge";

      if (element == "1") {
        _message = "さいたま市";
        _name = "saitamashi.png";
      } else if (element == "2") {
        _message = "川越市";
        _name = "kawagoe.png";
      } else if (element == "3") {
        _message = "熊谷市";
        _name = "kumagaya.png";
      } else if (element == "4") {
        _message = "川口市";
        _name = "kawaguchi.png";
      } else if (element == "5") {
        _message = "行田市";
        _name = "yukida.png";
      } else if (element == "6") {
        _message = "秩父市";
        _name = "chichibu.png";
      } else if (element == "7") {
        _message = "所沢市";
        _name = "tokorozawa.png";
      } else if (element == "8") {
        _message = "飯能市";
        _name = "hannou.png";
      } else if (element == "9") {
        _message = "加須市";
        _name = "kaga.png";
      } else if (element == "10") {
        _message = "本庄市";
        _name = "honjou.jpg";
      } else if (element == "11") {
        _message = "東松山市";
        _name = "higashimatsuyama.png";
      } else if (element == "12") {
        _message = "春日部市";
        _name = "kasukabe.png";
      } else if (element == "13") {
        _message = "狭山市";
        _name = "sayama.png";
      } else if (element == "14") {
        _message = "羽生市";
        _name = "hanyu.png";
      } else if (element == "15") {
        _message = "鴻巣市";
        _name = "kounosu.png";
      } else if (element == "16") {
        _message = "深谷市";
        _name = "hukaya.png";
      } else if (element == "17") {
        _message = "上尾市";
        _name = "ageo.png";
      } else if (element == "18") {
        _message = "草加市";
        _name = "souka.png";
      } else if (element == "19") {
        _message = "越谷市";
        _name = "koshigaya.png";
      } else if (element == "20") {
        _message = "蕨市";
        _name = "warabi.png";
      } else if (element == "21") {
        _message = "戸田市";
        _name = "toda.png";
      } else if (element == "22") {
        _message = "入間市";
        _name = "iruma.png";
      } else if (element == "23") {
        _message = "朝霞市";
        _name = "asaka.png";
      } else if (element == "24") {
        _message = "志木市";
        _name = "shiki.png";
      } else if (element == "25") {
        _message = "和光市";
        _name = "wako.png";
      } else if (element == "26") {
        _message = "新座市";
        _name = "niiza.png";
      } else if (element == "27") {
        _message = "桶川市";
        _name = "okegawa.png";
      } else if (element == "28") {
        _message = "久喜市";
        _name = "kuki.jpg";
      } else if (element == "29") {
        _message = "北本市";
        _name = "kitamoto.png";
      } else if (element == "30") {
        _message = "八潮市";
        _name = "yashio.gif";
      } else if (element == "31") {
        _message = "富士見市";
        _name = "hujimi.png";
      } else if (element == "32") {
        _message = "三郷市";
        _name = "misato.gif";
      } else if (element == "33") {
        _message = "蓮田市	";
        _name = "hasuda.png";
      } else if (element == "34") {
        _message = "坂戸市";
        _name = "sakato.jpg";
      } else if (element == "35") {
        _message = "幸手市";
        _name = "satte.jpg";
      } else if (element == "36") {
        _message = "鶴ヶ島市";
        _name = "tsurugashima.png";
      } else if (element == "37") {
        _message = "日高市";
        _name = "hidaka.png";
      } else if (element == "38") {
        _message = "吉川市";
        _name = "yoshikawa.png";
      } else if (element == "39") {
        _message = "ふじみ野市";
        _name = "fujimino.png";
      } else if (element == "40") {
        _message = "白岡市	";
        _name = "shiraoka.png";
      } else if (element == "41") {
        _message = "北足立群 伊奈町";
        _name = "ina.png";
      } else if (element == "42") {
        _message = "入間郡 三芳町";
        _name = "miyoshi.jpg";
      } else if (element == "43") {
        _message = "入間郡 毛呂山町";
        _name = "moroyama.jpg";
      } else if (element == "44") {
        _message = "入間郡 越生町";
        _name = "ogose.jpg";
      } else if (element == "45") {
        _message = "比企郡 滑川町	";
        _name = "namekawa.jpg";
      } else if (element == "46") {
        _message = "比企郡 嵐山町	";
        _name = "arashiyama.jpg";
      } else if (element == "47") {
        _message = "比企郡 小川町	";
        _name = "ogawa.jpg";
      } else if (element == "48") {
        _message = "比企郡 川島町";
        _name = "kawashima.jpg"; //
      } else if (element == "49") {
        _message = "比企郡 吉見町	";
        _name = "yoshimi.png";
      } else if (element == "50") {
        _message = "比企郡 鳩山町";
        _name = "hatoyama.png";
      } else if (element == "51") {
        _message = "比企郡 ときがわ町	";
        _name = "tokigawa.jpg"; //
      } else if (element == "52") {
        _message = "秩父郡 横瀬町";
        _name = "yokose.jpg"; //
      } else if (element == "53") {
        _message = "秩父郡 皆野町";
        _name = "minano.png";
      } else if (element == "54") {
        _message = "秩父郡 長瀞町	";
        _name = "nagatoro.png";
      } else if (element == "55") {
        _message = "秩父郡 小鹿野町";
        _name = "ogano.jpg";
      } else if (element == "56") {
        _message = "秩父郡　東秩父村";
        _name = "higashichichibu.png";
      } else if (element == "57") {
        _message = "児玉郡 美里町";
        _name = "misato.gif";
      } else if (element == "58") {
        _message = "児玉郡 神川町";
        _name = "kamikawa.jpg";
      } else if (element == "59") {
        _message = "児玉郡 上里町";
        _name = "kamisato.png";
      } else if (element == "60") {
        _message = "大里郡 寄居町	";
        _name = "yorii.jpg";
      } else if (element == "61") {
        _message = "南埼玉群 宮代町";
        _name = "miyashiro.jpg";
      } else if (element == "62") {
        _message = "北葛飾群 杉戸町	";
        _name = "sugito.jpg";
      } else if (element == "63") {
        _message = "北葛飾群 松伏町";
        _name = "matsubushi.jpg";
        // } else if(element == "") {
        //   _message = "";
        //   _url = "";
      } else {
        _message = "熊谷市";
        _name = "kumagaya.png";
      }
    });
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  // Todoリストのデータ
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: Text('リスト一覧'),
      ),
      // データを元にListViewを作成
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(todoList[index]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // "push"で新規画面に遷移
          // リスト追加画面から渡される値を受け取る
          final newListText = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              // 遷移先の画面としてリスト追加画面を指定
              return TodoAddPage();
            }),
          );
          if (newListText != null) {
            // キャンセルした場合は newListText が null となるので注意
            setState(() {
              // リスト追加
              todoList.add(newListText);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  // 入力されたテキストをデータとして持つ
  String _text = '';

  // データを元に表示するWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト追加'),
      ),
      body: Container(
        // 余白を付ける
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 入力されたテキストを表示
            Text(_text, style: TextStyle(color: Colors.blue)),
            const SizedBox(height: 8),
            // テキスト入力
            TextField(
              // 入力されたテキストの値を受け取る（valueが入力されたテキスト）
              onChanged: (String value) {
                // データが変更したことを知らせる（画面を更新する）
                setState(() {
                  // データを変更
                  _text = value;
                });
              },
            ),
            const SizedBox(height: 8),
            Container(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // リスト追加ボタン
              child: ElevatedButton(
                onPressed: () {
                  // "pop"で前の画面に戻る
                  // "pop"の引数から前の画面にデータを渡す
                  Navigator.of(context).pop(_text);
                },
                child: Text('リスト追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // キャンセルボタン
              child: TextButton(
                // ボタンをクリックした時の処理
                onPressed: () {
                  // "pop"で前の画面に戻る
                  Navigator.of(context).pop();
                },
                child: Text('キャンセル'),
              ),
            ),
          ],
        ),
      ),
    );
  }

//
// class HexColor extends Color {
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll('#', '');
//     if (hexColor.length == 6) {
//       hexColor = 'FF' + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }
//
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
// }
}
