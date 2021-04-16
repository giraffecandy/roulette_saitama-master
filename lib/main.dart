import 'dart:math';
import 'dart:ui';
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
  String _name = "saitamashi.png";

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('埼玉 市町村ルーレット ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.orange[300],
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Image.asset('image/$_name')
                      // Image.asset("image/saitamashi.png"),
                      // Image.network('$_url'),
                    ],
                  )
                // width: size.width,
                // height: resultAreaHeight,
              ),

              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children:<Widget>[
                      Text(
                        _message,
                        style: TextStyle(
                          // fontFamily: "",
                            fontWeight: FontWeight.bold,
                            color: Colors.orange
                        ),
                      ),
                    ]
                ),
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('START'),
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
            ],
          ),
        ),
      ),
    );
  }
  void _onPressed() {

    setState(() {
      List list = ['1', "2", "3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32",
        "33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66"];
      // generates a new Random object
      final _random = new Random();

      var element = list[_random.nextInt(list.length)];
      // var _url = "hogehoge";

      if(element == "1") {
        _message = "さいたま市";
        _name    = "saitamashi.png";
      } else if (element == "2") {
        _message = "川越市";
        _name = "kawagoe.png";
      } else if(element == "3") {
        _message = "熊谷市";
        _name = "kumagaya.png";
      } else if(element == "4") {
        _message = "川口市";
        _name = "kawaguchi.png";
      } else if(element == "5") {
        _message = "行田市";
        _name = "yukida.png";
      } else if(element == "6") {
        _message = "秩父市";
        _name = "chichibu.png";
      } else if(element == "7") {
        _message = "所沢市";
        _name = "tokorozawa.png";
      } else if(element == "8") {
        _message = "飯能市";
        _name = "hannou.png";
      } else if(element == "9") {
        _message = "加須市";
        _name = "kaga.png";
      } else if(element == "10") {
        _message = "本庄市";
        _name = "honjo.jpg";
      } else if(element == "11") {
        _message = "東松山市";
        _name  = "higashimatsuyama.png";
      } else if(element == "12") {
        _message = "春日部市";
        _name = "kasukabe.png";
      } else if(element == "13") {
        _message = "狭山市";
        _name = "sayama.png";
      } else if(element == "14") {
        _message = "羽生市";
        _name = "hanyu.png";
      } else if(element == "15") {
        _message = "鴻巣市";
        _name = "kounosu.png";
      } else if(element == "16") {
        _message = "深谷市";
        _name  = "hukaya.png";
      } else if(element == "17") {
        _message = "上尾市";
        _name = "ageo.png";
      } else if(element == "18") {
        _message = "草加市";
        _name = "souka.png";
      } else if(element == "19") {
        _message = "越谷市";
        _name = "koshigaya.png";
      } else if(element == "20") {
        _message = "蕨市";
        _name = "warabi.png";
      } else if(element == "21") {
        _message = "戸田市";
        _name = "toda.png";
      } else if(element == "22") {
        _message = "入間市";
        _name = "iruma.png";
      } else if(element == "23") {
        _message = "朝霞市";
        _name  = "asaka.png";
      } else if(element == "24") {
        _message = "志木市";
        _name = "shiki.png";
      } else if(element == "25") {
        _message = "和光市";
        _name = "wako.png" ;
      } else if(element == "26") {
        _message = "新座市";
        _name = "niiza.png";
      } else if(element == "27") {
        _message = "桶川市";
        _name = "okegawa.png";
      } else if(element == "28") {
        _message = "久喜市";
        _name = "kuki.jpg";
      } else if(element == "29") {
        _message = "北本市";
        _name = "kitamoto.png";
      } else if(element == "30") {
        _message = "八潮市";
        _name = "yashio.gif";
      } else if(element == "31") {
        _message = "富士見市";
        _name = "hujimi.png";
      } else if(element == "32") {
        _message = "三郷市";
        _name = "misato.gif";
      } else if(element == "33") {
        _message = "蓮田市	";
        _name = "hasuda.png";
      } else if(element == "34") {
        _message = "坂戸市";
        _name = "sakato.jpg";
      } else if(element == "35") {
        _message = "幸手市";
        _name = "satte.jpg";
      } else if(element == "36") {
        _message = "鶴ヶ島市";
        _name = "tsurugashima.png";
      } else if(element == "37") {
        _message = "日高市";
        _name = "hidaka.png";
      } else if(element == "38") {
        _message = "吉川市";
        _name = "yoshikawa.png";
      } else if(element == "39") {
        _message = "ふじみ野市";
        _name = "fujimino.png";
      } else if(element == "40") {
        _message = "白岡市	";
        _name = "shiraoka.png";
      } else if(element == "41") {
        _message = "伊奈町";
        _name = "ina.png";
      } else if(element == "42") {
        _message = "三芳町";
        _name = "miyoshi.jpg";
      } else if(element == "43") {
        _message = "毛呂山町";
        _name = "moroyama.jpg";
      } else if(element == "44") {
        _message = "越生町";
        _name = "ogose.jpg";
      }  else if(element == "45") {
        _message = "滑川町	";
        _name = "namekawa.jpg";
      } else if(element == "46") {
        _message = "嵐山町	";
        _name = "arashiyama.jpg";
      } else if(element == "47") {
        _message = "小川町	";
        _name = "ogawa.jpg";
      } else if(element == "48") {
        _message = "川島町";
        _name = "kawashima.jpg";      //
      } else if(element == "49") {
        _message = "吉見町	";
        _name = "yoshimi.png";
      } else if(element == "50") {
        _message = "鳩山町";
        _name = "hatoyama.png";
      } else if(element == "51") {
        _message = "ときがわ町	";
        _name = "tokigawa.jpg";      //
      } else if(element == "52") {
        _message = "横瀬町";
        _name = "yokose.jpg";        //
      } else if(element == "53") {
        _message = "皆野町";
        _name = "minano.png";
      } else if(element == "54") {
        _message = "長瀞町	";
        _name = "nagatoro.png";
      } else if(element == "55") {
        _message = "小鹿野町";
        _name = "ogano.jpg";
      } else if(element == "56") {
        _message = "東秩父村";
        _name = "higashichichibu.png"  ;
      } else if(element == "57") {
        _message = "美里町";
        _name = "misato.gif";
      } else if(element == "58") {
        _message = "神川町";
        _name = "kamikawa.jpg";
      } else if(element == "59") {
        _message = "上里町";
        _name = "kamisato.png";
      } else if(element == "60") {
        _message = "寄居町	";
        _name = "yorii.jpg";
      } else if(element == "61") {
        _message = "宮代町";
        _name = "miyashiro.jpg";
      } else if(element == "62") {
        _message = "杉戸町	";
        _name = "sugiito.jpg";
      } else if(element == "63") {
        _message = "松伏町";
        _name   =  "matsubushi.jpg";
        // } else if(element == "") {
        //   _message = "";
        //   _url = "";
      } else {
        _message = "熊谷市";
        _name   = "kumagaya.png";
      }

    });
  }

}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}