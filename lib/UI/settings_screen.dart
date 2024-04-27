import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Settings Screen'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
          Column(
            children: [
              Text('Настройка 1'),
              Text('Настройка 2'),
              Text('Настройка 3'),
              Text('Настройка 4')
            ],
          )
      )
    );
  }
}