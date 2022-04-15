import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:share/share.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CovApp19',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'CovApp19'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Estimation result'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SfRadialGauge(axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 100,
              pointers: <GaugePointer>[NeedlePointer(value: _r2)],
              ranges: <GaugeRange>[
                GaugeRange(
                    startValue: 0,
                    endValue: 15,
                    color: Colors.green,
                    startWidth: 10,
                    endWidth: 10),
                GaugeRange(
                    startValue: 15,
                    endValue: 35,
                    color: Colors.orange,
                    startWidth: 10,
                    endWidth: 10),
                GaugeRange(
                    startValue: 35,
                    endValue: 100,
                    color: Colors.red,
                    startWidth: 10,
                    endWidth: 10)
              ],
            )
          ]),
          Text(
            "$_message",
            style: TextStyle(color: _clrmessage),
          ),
        ],
      ),
      actions: <Widget>[
        Positioned(
          left: 108,
          top: 650,
          child: FloatingActionButton(
            onPressed: _shareContent,
            tooltip: 'Increment',
            child: Icon(Icons.share),
          ),
        ),
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }

  dynamic _personnes = 0;
  dynamic _superficie = 0;
  dynamic _config = 0;
  dynamic _value = 0;
  dynamic _result = 0;
  dynamic _vaccinated = 0;

  double _r2 = 0;
  String _message = "Error with permission message";
  String _erreur = "";
  Color _clrmessage = Colors.black;
  String _argument = "so you come to play FIFA?";
  String _messageProba = "";
  String _textResult = "";
  int _selectedIndex = 0;

  // void nombre() {
  //   setState(() {
  //     _initiale = _initiale + 1;
  //     if (_initiale < 100) {
  //       nombre();
  //     }
  //   });
  // }

  void script() {
    setState(() {
      //_resultat = (_personnes / _superficie * _config * 70);
      if (_vaccinated <= _personnes) {
        showDialog(
          context: context,
          builder: (BuildContext context) => _buildPopupDialog(context),
        );
        _erreur = "";
      } else {
        _erreur = "Be careful, your choices are not consistent";
      }
      if ((_personnes / _superficie * _config * 80) < 100) {
        _value = (_personnes - (_vaccinated * 0.20)) /
            _superficie *
            (_config + 0.60) *
            60;
        _result = (_value).round();
      } else {
        _result = 99;
      }
      _r2 = _r2 - _r2;
      _r2 = _r2 + _result;
      if (_personnes > 5) {
        _argument = "so we're having a party?!";
      }
      if (_result < 20) {
        _message = "You can meet under these conditions";
        _clrmessage = Colors.green;
      }
      if (_result > 19) {
        _message = "Vous pouvez vous réunir en prenant vos précautions";
        _clrmessage = Colors.orange;
      }
      if (_result > 35) {
        _message = "Vous ne pouvez pas vous réunir dans ces conditions !";
        _clrmessage = Colors.red;
      }
      _textResult = "$_result %";
    });
  }

  void _shareContent() {
    String _content =
        "Salut, chez moi avec $_personnes personnes il y a $_result % de chances que quelqu'un soit contaminé par la Covid19 selon CovApp19, $_argument";
    Share.share(_content);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          height: 536,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              //alignment: Alignment.center,
              children: <Widget>[
                Text(
                  "$_erreur",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'Number of persons',
                  textScaleFactor: 1.5,
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
                DropdownButton(
                    value: _personnes,
                    items: [
                      DropdownMenuItem(
                        child: Text("0"),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text("1"),
                        value: 1,
                      ),
                      DropdownMenuItem(child: Text("2"), value: 2),
                      DropdownMenuItem(child: Text("3"), value: 3),
                      DropdownMenuItem(child: Text("4"), value: 4),
                      DropdownMenuItem(child: Text("5"), value: 5),
                      DropdownMenuItem(child: Text("6"), value: 6),
                      DropdownMenuItem(child: Text("7"), value: 7),
                      DropdownMenuItem(child: Text("8"), value: 8),
                      DropdownMenuItem(child: Text("9"), value: 9),
                      DropdownMenuItem(child: Text("10"), value: 10),
                      DropdownMenuItem(child: Text("11"), value: 11),
                      DropdownMenuItem(child: Text("12"), value: 12),
                      DropdownMenuItem(child: Text("13"), value: 13),
                      DropdownMenuItem(child: Text("14"), value: 14),
                      DropdownMenuItem(child: Text("15"), value: 15),
                      DropdownMenuItem(child: Text("16"), value: 16),
                      DropdownMenuItem(child: Text("17"), value: 17),
                      DropdownMenuItem(child: Text("18"), value: 18),
                      DropdownMenuItem(child: Text("19"), value: 19),
                      DropdownMenuItem(child: Text("20"), value: 20),
                      DropdownMenuItem(child: Text("21"), value: 21),
                      DropdownMenuItem(child: Text("22"), value: 22),
                      DropdownMenuItem(child: Text("23"), value: 23),
                      DropdownMenuItem(child: Text("24"), value: 24),
                      DropdownMenuItem(child: Text("25"), value: 25),
                      DropdownMenuItem(child: Text("26"), value: 26),
                      DropdownMenuItem(child: Text("27"), value: 27),
                      DropdownMenuItem(child: Text("28"), value: 28),
                      DropdownMenuItem(child: Text("29"), value: 29),
                      DropdownMenuItem(child: Text("30"), value: 30),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _personnes = value;
                      });
                    }),
                Text(
                  'Area (in m2)',
                  textScaleFactor: 1.5,
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
                DropdownButton(
                    value: _superficie,
                    items: [
                      DropdownMenuItem(
                        child: Text("0"),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text("1"),
                        value: 1,
                      ),
                      DropdownMenuItem(child: Text("2"), value: 2),
                      DropdownMenuItem(child: Text("3"), value: 3),
                      DropdownMenuItem(child: Text("4"), value: 4),
                      DropdownMenuItem(child: Text("5"), value: 5),
                      DropdownMenuItem(child: Text("6"), value: 6),
                      DropdownMenuItem(child: Text("7"), value: 7),
                      DropdownMenuItem(child: Text("8"), value: 8),
                      DropdownMenuItem(child: Text("9"), value: 9),
                      DropdownMenuItem(child: Text("10"), value: 10),
                      DropdownMenuItem(child: Text("11"), value: 11),
                      DropdownMenuItem(child: Text("12"), value: 12),
                      DropdownMenuItem(child: Text("13"), value: 13),
                      DropdownMenuItem(child: Text("14"), value: 14),
                      DropdownMenuItem(child: Text("15"), value: 15),
                      DropdownMenuItem(child: Text("16"), value: 16),
                      DropdownMenuItem(child: Text("17"), value: 17),
                      DropdownMenuItem(child: Text("18"), value: 18),
                      DropdownMenuItem(child: Text("19"), value: 19),
                      DropdownMenuItem(child: Text("20"), value: 20),
                      DropdownMenuItem(child: Text("21"), value: 21),
                      DropdownMenuItem(child: Text("22"), value: 22),
                      DropdownMenuItem(child: Text("23"), value: 23),
                      DropdownMenuItem(child: Text("24"), value: 24),
                      DropdownMenuItem(child: Text("25"), value: 25),
                      DropdownMenuItem(child: Text("26"), value: 26),
                      DropdownMenuItem(child: Text("27"), value: 27),
                      DropdownMenuItem(child: Text("28"), value: 28),
                      DropdownMenuItem(child: Text("29"), value: 29),
                      DropdownMenuItem(child: Text("30"), value: 30),
                      DropdownMenuItem(child: Text("31"), value: 31),
                      DropdownMenuItem(child: Text("32"), value: 32),
                      DropdownMenuItem(child: Text("33"), value: 33),
                      DropdownMenuItem(child: Text("34"), value: 34),
                      DropdownMenuItem(child: Text("35"), value: 35),
                      DropdownMenuItem(child: Text("36"), value: 36),
                      DropdownMenuItem(child: Text("37"), value: 37),
                      DropdownMenuItem(child: Text("38"), value: 38),
                      DropdownMenuItem(child: Text("39"), value: 39),
                      DropdownMenuItem(child: Text("40"), value: 40),
                      DropdownMenuItem(child: Text("41"), value: 41),
                      DropdownMenuItem(child: Text("42"), value: 42),
                      DropdownMenuItem(child: Text("43"), value: 43),
                      DropdownMenuItem(child: Text("44"), value: 44),
                      DropdownMenuItem(child: Text("45"), value: 45),
                      DropdownMenuItem(child: Text("46"), value: 46),
                      DropdownMenuItem(child: Text("47"), value: 47),
                      DropdownMenuItem(child: Text("48"), value: 48),
                      DropdownMenuItem(child: Text("49"), value: 49),
                      DropdownMenuItem(child: Text("50"), value: 50),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _superficie = value;
                      });
                    }),
                Text(
                  "Space configuration",
                  textScaleFactor: 1.5,
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
                DropdownButton(
                    value: _config,
                    items: [
                      DropdownMenuItem(
                        child: Text("Outdoor"),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text("Indoor with open windows"),
                        value: 2,
                      ),
                      DropdownMenuItem(child: Text("Indoor"), value: 3),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _config = value;
                      });
                    }),
                Text(
                  'Number of vaccinated people',
                  textScaleFactor: 1.5,
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
                DropdownButton(
                    value: _vaccinated,
                    items: [
                      DropdownMenuItem(
                        child: Text("0"),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text("1"),
                        value: 1,
                      ),
                      DropdownMenuItem(child: Text("2"), value: 2),
                      DropdownMenuItem(child: Text("3"), value: 3),
                      DropdownMenuItem(child: Text("4"), value: 4),
                      DropdownMenuItem(child: Text("5"), value: 5),
                      DropdownMenuItem(child: Text("6"), value: 6),
                      DropdownMenuItem(child: Text("7"), value: 7),
                      DropdownMenuItem(child: Text("8"), value: 8),
                      DropdownMenuItem(child: Text("9"), value: 9),
                      DropdownMenuItem(child: Text("10"), value: 10),
                      DropdownMenuItem(child: Text("11"), value: 11),
                      DropdownMenuItem(child: Text("12"), value: 12),
                      DropdownMenuItem(child: Text("13"), value: 13),
                      DropdownMenuItem(child: Text("14"), value: 14),
                      DropdownMenuItem(child: Text("15"), value: 15),
                      DropdownMenuItem(child: Text("16"), value: 16),
                      DropdownMenuItem(child: Text("17"), value: 17),
                      DropdownMenuItem(child: Text("18"), value: 18),
                      DropdownMenuItem(child: Text("19"), value: 19),
                      DropdownMenuItem(child: Text("20"), value: 20),
                      DropdownMenuItem(child: Text("21"), value: 21),
                      DropdownMenuItem(child: Text("22"), value: 22),
                      DropdownMenuItem(child: Text("23"), value: 23),
                      DropdownMenuItem(child: Text("24"), value: 24),
                      DropdownMenuItem(child: Text("25"), value: 25),
                      DropdownMenuItem(child: Text("26"), value: 26),
                      DropdownMenuItem(child: Text("27"), value: 27),
                      DropdownMenuItem(child: Text("28"), value: 28),
                      DropdownMenuItem(child: Text("29"), value: 29),
                      DropdownMenuItem(child: Text("30"), value: 30),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _vaccinated = value;
                      });
                    }),
                Text(
                  '$_messageProba',
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.6,
                ),
                // Text(
                //   '$_textResult',
                //   style: Theme.of(context).textTheme.headline4,
                // ),
              ],
            ),
          ])),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          onPressed: () {
            script();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.paid),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.display_settings),
            label: 'Estimate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 0, 66, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}
