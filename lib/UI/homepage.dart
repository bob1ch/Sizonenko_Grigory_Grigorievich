import 'package:flutter/material.dart';
import 'package:ex2/UI/profilehead.dart';
import 'dart:math';
import 'dart:ui';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _quote = ' ';
  var _quotes = ['MY LEG! FOR THE LOVE OF LIBERTY MYY LEGG!!',
    'That\'s one more victory for the right side of history!',
    'Another sample for de-mo-cra-cy!',
    'How about a nice big cup of Liber-TEA!', 'Liberty save meeee',
    'For managed democracy'];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      var rng = Random();
      _counter += rng.nextInt(100);
    });
  }

  void _generateQuote() {
    setState(() {
      var rng = Random().nextInt(4);
      _quote = _quotes[rng];
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                ImageSection(image: 'assets/images/man_liberty.png'),
                TextSection(
                    description1:
                    'Name: bob1ch',
                    description2:
                    'Status: I like smell of LIBERTY on morning'
                )
              ],
            ),


            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                          'Favourite quote ',
                          softWrap: true,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20)
                      ),
                      Text(
                        '$_quote',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: _generateQuote,
                        child: const Text('Generate')),
                  )
                ]),

            const Text(
              'You have killed enemies of Democracy:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}