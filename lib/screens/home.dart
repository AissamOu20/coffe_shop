// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Provone(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text(
              'Coffeshop',
            ),
          ),
          body: ListView(
            children: <Widget>[
              Consumer<Provone>(
                builder: (context, provone, child) {
                  return Text(provone.text);
                },
              ),
              Consumer<Provone>(builder: (context, provone, child) {
                return FloatingActionButton(
                  onPressed: () {
                    provone.showsomting();
                  },
                  child: Text(provone.text),
                );
              })
            ],
          )),
    );
  }
}

class Provone extends ChangeNotifier {
  String text = 'Show Somthing';
  Color color = Colors.black;
  showsomting() {
    text = 'provider on';
    color = Colors.amber;

    notifyListeners();
  }
}
