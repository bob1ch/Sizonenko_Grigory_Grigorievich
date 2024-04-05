import 'package:easy_localization/easy_localization.dart';
import 'package:ex2/generated/locale_keys.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ex2/UI/profilehead.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ex2/generated/locale_keys.g.dart';
import 'package:ex2/generated/codegen_loader.g.dart';

import 'package:flutter/widgets.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class LangvButton extends StatelessWidget {

  Function() butFnx;

  LangvButton({super.key, required this.butFnx});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: butFnx,
      child: Text(context.locale.toString()),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counterLikes = 0;
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
  
  void _incrementLikes() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      var rng = Random();
      _counterLikes += rng.nextInt(5);
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: LocaleKeys.nav_menu.tr(),
          onPressed: null,
        ),
        title: Text(widget.title),
        actions: [
          LangvButton(butFnx: () {
            if (context.locale == const Locale("en")) {
              context.setLocale(const Locale("ru"));
            } else {
              context.setLocale(const Locale("en"));
            }
          }),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextSection(
                      description1: '#bob1ch',
                      description2: '#I like smell of LIBERTY on morning'
                  ),
                  ImageSection(image: 'assets/images/man_liberty.png'),
                ]),


              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                            LocaleKeys.quote.tr(),
                            softWrap: true,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20)
                        ),
                        Text(
                          '$_quote',
                        ),

                      ],
                    ),
                    ElevatedButton(
                        onPressed: _generateQuote,
                        child: Text(LocaleKeys.gen.tr())),
                  ]),

              //Шапка новостей
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child:
                        Container(
                            decoration: BoxDecoration(color: Colors.blue.shade100, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(LocaleKeys.news_title.tr(), textAlign: TextAlign.center),
                            )
                        ),
                    ),
                  ],
                ),
              ),


              //Первый пост
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Container(
                          decoration: BoxDecoration(color: Colors.blue.shade100, borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image.asset('assets/images/Malevelon.png', scale: 3, fit: BoxFit.contain,),
                                Text('#At long last, malevelon creek is free', textAlign: TextAlign.center),
                                Row(
                                  children: [
                                    Text(LocaleKeys.vote.tr(),),
                                    Text(
                                      '$_counterLikes',
                                      style: Theme.of(context).textTheme.headlineMedium,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      child: FloatingActionButton(
                                            onPressed: _incrementLikes,
                                            tooltip: LocaleKeys.like.tr(),
                                            child: const Icon(Icons.add),

                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),


              Text(
                LocaleKeys.kills.tr(),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: LocaleKeys.plus.tr(),
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}