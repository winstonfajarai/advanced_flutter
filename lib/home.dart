import 'package:flutter/material.dart';

class NextGo extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<NextGo> with SingleTickerProviderStateMixin {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Excercise"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/light2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Flexible(
                  flex: 8,
                  child: Container(
                    width: 1000,
                    height: 650,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/flowers.jpg"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Flexible(
                    flex: 4,
                    child: Container(
                      width: 412,
                      height: 400,
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 95,
                            height: 95,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/flower1.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(8, 0, 5, 11),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/flower1.JPG"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 11),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/flower2.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 11),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/flower4.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 11),
                          )
                        ],
                      ),
                    )),
                Flexible(
                    flex: 2,
                    child: Container(
                      height: 50,
                      width: 1000,
                      child: Text(
                        "Welcome To Golden Tulip Holland Batu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Flexible(
                  flex: 8,
                  child: Container(
                    width: 700,
                    height: 1000,
                    margin: EdgeInsets.only(left: 25, right: 10),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          "       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "       Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "       Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "       Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 25, right: 25),
              child: FloatingActionButton(
                  child: Icon(
                    Icons.favorite,
                    color: _hasBeenPressed ? Colors.red : Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      _hasBeenPressed = !_hasBeenPressed;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}