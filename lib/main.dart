import 'package:flutter/material.dart';

void main() {
  // mean function => run myapp widget
  runApp(MyApp());
}

// statelessWidget => widget with no state
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Flutter training'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title; // can't retouch this variable because It's final

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String prenom = '';
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(),
        ),
        //  leading: Icon(Icons.ac_unit),
        actions: [
          Icon(Icons.directions_bike),
          Icon(Icons.cabin_outlined),
          Icon(Icons.home),
        ],
        backgroundColor: Colors.red,
        elevation: 10.0,
      ),
      //  drawer: Text('tst'),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          // color: Colors.grey,
          // height: MediaQuery.of(context).size.height /2,
          width: MediaQuery.of(context).size.width,
          // margin: EdgeInsets.all(12.0),
          margin: EdgeInsets.only(top: 3.0),
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "I'm back, Ihave to succed it, I will do my best to get this opportinuty",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
                textScaleFactor: 2.0, // become 40
                maxLines: 2,
              ),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
              // TextField(
              //   onSubmitted: (String string) {
              //     setState(() {
              //       prenom = string;
              //     });
              //   },
              // )
              Card(
                color: Colors.black,
                elevation: 5.0,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 3,
                  // child: Image.network(
                  //   'https://codabee.com/wp-content/uploads/2018/03/cropped-Artboard-2.png',
                  //   fit: BoxFit.fill
                  // ),
                  child: Image.asset(
                    'images/road.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => print("cool"),
                 icon: Icon(
                   Icons.ac_unit_outlined,
                 )
                ),
              Container(
                height: largeur / 5,
                color: Colors.blue,
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: largeur / 8,
                      width: largeur / 8,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: largeur / 8,
                      width: largeur / 8,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: largeur / 8,
                      width:largeur / 8,
                      color: Colors.yellow,
                      child: Icon(
                        Icons.thumb_down,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: largeur / 8,
                      width:largeur / 8,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: largeur / 8,
                      width: largeur / 8,
                      color: Colors.yellow,
                    ),
                    Container(
                      height:largeur / 8,
                      width: largeur / 8,
                      color: Colors.yellow,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment', // for know serve our button
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
