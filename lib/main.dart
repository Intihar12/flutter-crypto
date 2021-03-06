/*
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'home_scrren.dart';

void main()async{
  List currencies = await getCurrrences();
  runApp(MyApp(currencies));}


class MyApp extends StatelessWidget {
  //const MyApp({Key? key, required this.currencies}) : super(key: key);

  MyApp( this.currencies);
  final List currencies;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: myhomepage(currencies: [],),
    );
  }
}

Future<List> getCurrrences() async{

  String cryptoUrl= "https://api.coinmarketcap.com/v1/ticker/?limit=50";
  http.Response responce =await http.get(Uri.parse(cryptoUrl));
  return jsonDecode(responce.body);
}*/



import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0; // used by StreamBuilder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildFutureBuilder(),
          SizedBox(height: 24),
          _buildStreamBuilder(),
        ],
      ),
    );
  }

  // constructing FutureBuilder
  Widget _buildFutureBuilder() {
    return Center(
      child: FutureBuilder<int>(
        future: _calculateSquare(15),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done)
            return Text("Square = ${snapshot.data}");

          return CircularProgressIndicator();
        },
      ),
    );
  }

  // used by FutureBuilder
  Future<int> _calculateSquare(int num) async {
    await Future.delayed(Duration(seconds: 5));
    return num * num;
  }

  // constructing StreamBuilder
  Widget _buildStreamBuilder() {
    return Center(
      child: StreamBuilder<int>(
        stream: _stopwatch(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active)
            return Text("Stopwatch = ${snapshot.data}");

          return CircularProgressIndicator();
        },
      ),
    );
  }

  // used by StreamBuilder
  Stream<int> _stopwatch() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield _count++;
    }
  }
}