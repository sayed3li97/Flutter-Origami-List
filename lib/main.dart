import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static Color mainColor = Color(0xff3FACC2);
  double buttonsHeight = 50;

  AppBar appBar = AppBar(
    centerTitle: true,
    elevation: 0.0,
    leading: Icon(Icons.search),
    backgroundColor: mainColor,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: appBar,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
                vertical: ((MediaQuery.of(context).size.height * 0.15) -
                        appBar.preferredSize.height) /
                    2,
                horizontal: 30),
            child: Row(
              children: <Widget>[
                Text(
                  "Origami ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
                Text(
                  "List",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 10,
                    // color: Colors.yellow,
                    style: BorderStyle.none),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height * 0.842) -
                  appBar.preferredSize.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  customeRow("assets/orgami.png", "Origami Bird", "sub title"),
                  customeRow("assets/camel.png", "Origami Camel", "sub title"),
                  customeRow("assets/dear.png", "Origami Dear", "sub title"),
                  customeRow(
                      "assets/dragon.png", "Origami Dragon", "sub title"),
                  customeRow("assets/fox.png", "Origami Fox", "sub title"),
                  customeRow("assets/poki.png", "Origami Pokimon", "sub title"),
                  customeRow("assets/wolf.png", "Origami Wolf", "sub title"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          splashColor: mainColor,
                          height: buttonsHeight,
                          minWidth: buttonsHeight,
                          child: Icon(Icons.notifications)),
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          splashColor: mainColor,
                          height: buttonsHeight,
                          minWidth: buttonsHeight,
                          child: Icon(Icons.card_travel)),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.black)),
                        onPressed: () {},
                        color: Colors.black,
                        height: 50,
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          "Order now!",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget customeRow(String image, String title, String subtitle) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            child: Image.asset(image),
          ),
          Container(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
