import 'package:flutter/material.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(
      
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Digdarshan Subedi'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.image),
              onPressed: () {},
            )
          ],
        ),
        body: PageView(
          controller: controller,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/digdarshan.jpg',
                    ),
                  ),
                  Expanded(
                                      child: RaisedButton(
                      onPressed: () {
                        controller.nextPage(curve: Curves.bounceIn,duration: Duration(seconds: 2));
                        
                      },
                      child: Text("Next"),
                      
                      
                    ),
                  ),
                ],
              ),
              color: Colors.white,
            ),
            Container(
              child: Center(
                child: Image.asset('asset/assets/digdarshan.jpg'),
              ),
              color: Colors.yellow,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
