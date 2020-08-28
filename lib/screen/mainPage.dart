import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool connectionStat = false;
  bool electricStat = false;
  bool engineStat = false;
  bool hornStat = false;

  List<ScreenHiddenDrawer> items = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(71, 66, 66, 1),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              color: Color.fromRGBO(71, 66, 66, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: (){},
                  ),
                  Text(
                    'BIXE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 20.0,
                      letterSpacing: 5.0,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Color.fromRGBO(71, 66, 66, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Connection Status :',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Switch(
                    value: connectionStat,
                    onChanged: (bool connValue){
                      setState(() {
                        connectionStat = connValue;
                      });
                    },
                    inactiveThumbColor: Color.fromRGBO(71, 79, 79, 1),
                    activeTrackColor: Colors.white,
                    activeColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Color.fromRGBO(71, 66, 66, 1),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.network('https://i1.wp.com/warungasep.net/wp-content/uploads/2017/05/yamaha-Vixion-R-2017-racing-blue.png?resize=560%2C460',
                              repeat: ImageRepeat.noRepeat,
                        ),
                      height: 130,
                    ),
                    Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              'Yamaha VIXION 150',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 2.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            child: Center(
                              child: Text(
                                'D 6485 AAL',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Color.fromRGBO(71, 66, 66, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            electricStat = !electricStat;
                          });
                        },
                        child: Card(
                          color: Color.fromRGBO(80, 80, 80, 1),
                          elevation: 5,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'ELECTRICITY',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.white,
                                  highlightColor: Color.fromRGBO(80, 80, 80, 1),
                                  loop: 3,
                                  child: Icon(
                                    FontAwesomeIcons.bolt,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                electricStat ? Text(
                                  'ON',
                                  style: TextStyle(
                                    color: Colors.green,
                                    letterSpacing: 3.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ) : Text(
                                  'OFF',
                                  style: TextStyle(
                                    color: Colors.red,
                                    letterSpacing: 3.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            engineStat = !engineStat;
                          });
                        },
                        child: Card(
                          color: Color.fromRGBO(80, 80, 80, 1),
                          elevation: 5,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'ENGINE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.white,
                                  highlightColor: Color.fromRGBO(80, 80, 80, 1),
                                  loop: 3,
                                  child: Icon(
                                    FontAwesomeIcons.cogs,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                engineStat ? Text(
                                  'ON',
                                  style: TextStyle(
                                    color: Colors.green,
                                    letterSpacing: 3.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ) : Text(
                                  'OFF',
                                  style: TextStyle(
                                    color: Colors.red,
                                    letterSpacing: 3.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            hornStat = !hornStat;
                          });
                        },
                        child: Card(
                          color: Color.fromRGBO(80, 80, 80, 1),
                          elevation: 5,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'HORN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.white,
                                  highlightColor: Color.fromRGBO(80, 80, 80, 1),
                                  loop: 3,
                                  child: hornStat ? Icon(
                                    FontAwesomeIcons.volumeUp,
                                    size: 50,
                                    color: Colors.white,
                                  ) : Icon(
                                    FontAwesomeIcons.volumeDown,
                                    size: 50,
                                    color: Colors.white,
                                  )
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                hornStat ? Text(
                                  'ON',
                                  style: TextStyle(
                                    color: Colors.green,
                                    letterSpacing: 3.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ) : Text(
                                  'OFF',
                                  style: TextStyle(
                                    color: Colors.red,
                                    letterSpacing: 3.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          color: Color.fromRGBO(80, 80, 80, 1),
                          elevation: 5,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'TRACK',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Shimmer.fromColors(
                                  baseColor: Colors.white,
                                  highlightColor: Color.fromRGBO(80, 80, 80, 1),
                                  loop: 3,
                                  child: Icon(
                                    FontAwesomeIcons.locationArrow,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'OPEN MAPS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

