/*
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:fluttercrypto/data/crypto_data.dart';
//import 'package:fluttercrypto/modules/crypto_presenter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> implements CryptoListViewContract {
  CryptoListPresenter _presenter;
  List<Crypto> _currencies;
  bool _isLoading;
  final List<MaterialColor> _colors = [Colors.blue, Colors.indigo, Colors.red];

  _HomePageState() {
    _presenter = new CryptoListPresenter(this);
  }

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _presenter.loadCurrencies();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Crypto App"),
          elevation: defaultTargetPlatform == TargetPlatform.iOS ? 0.0 : 5.0,
        ),
        body: _isLoading
            ? new Center(
          child: new CircularProgressIndicator(),
        )
            :new ListView.builder(
          itemCount: _currencies.length,
          itemBuilder: (BuildContext context,int index)=>
              _getRowWithDivider(index),)
    );
  }

  Widget _getRowWithDivider(int i) {
    final Crypto currency = _currencies[i];
    var children = <Widget>[
      new Padding(
          padding: new EdgeInsets.all(10.0),
          child: _getListItemUi(currency)
      ),
      new Divider(height: 5.0),
    ];

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }

  ListTile _getListItemUi(Crypto currency) {
    return new ListTile(
      leading: new FadeInImage(placeholder: new AssetImage('assets/2.0x/stars.png'), image: new NetworkImage("http://cryptoicons.co/32@2x/color/"+currency.symbol.toLowerCase()+"@2x.png")),
      title: new Text(currency.name,
          style: new TextStyle(fontWeight: FontWeight.bold)),
      subtitle:
      _getSubtitleText(currency.price_usd, currency.percent_change_1h),
      isThreeLine: true,
    );
  }

  Widget _getSubtitleText(String priceUSD, String percentageChange) {
    TextSpan priceTextWidget = new TextSpan(
        text: "\$$priceUSD\n", style: new TextStyle(color: Colors.black));
    String percentageChangeText = "1 hour: $percentageChange%";
    TextSpan percentageChangeTextWidget;

    if (double.parse(percentageChange) > 0) {
      percentageChangeTextWidget = new TextSpan(
          text: percentageChangeText,
          style: new TextStyle(color: Colors.green));
    } else {
      percentageChangeTextWidget = new TextSpan(
          text: percentageChangeText, style: new TextStyle(color: Colors.red));
    }

    return new RichText(
        text: new TextSpan(
            children: [priceTextWidget, percentageChangeTextWidget]));
  }

  @override
  void onLoadCryptoComplete(List<Crypto> items) {
    // TODO: implement onLoadCryptoComplete

    setState(() {
      _currencies = items;
      _isLoading = false;
    });
  }

  @override
  void onLoadCryptoError() {
    // TODO: implement onLoadCryptoError
  }
}*/

/*
import 'package:flutter/material.dart';

class myhomepage extends StatefulWidget {


  const myhomepage({Key? key ,required this.currencies}) : super(key: key);
final List currencies;
  @override
  _myhomepageState createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  late List currences;
  final List<MaterialColor> _colors= [Colors.teal,Colors.red, Colors.blue,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('crypto'),),


      body: _cryptoWidget(),

    );
  }
  Widget _cryptoWidget(){
    return Container(
      child:  Column(
        children: [
          Flexible(
            child: ListView.builder(
            itemCount:widget.currencies.length,
                itemBuilder: (BuildContext context, int index)  {
 final Map currency= widget.currencies[index];
 final MaterialColor color= _colors[index % _colors.length];

 return _getListItemUi(currency,color);
    },
          ),
    ),
        ],
      ),);
  }
ListTile _getListItemUi(Map currency,MaterialColor color){
 return ListTile(
   leading: CircleAvatar(
     backgroundColor: color,
     child:  Text(currency['name' [0]]),
   ),
   title: Text(currency ['name'], style: TextStyle(fontWeight: FontWeight.bold),),
   subtitle:
   _getSubtitleText(currency['price_usd'], currency['percent_change_1h']),
   isThreeLine: true,

 );
}
  Widget _getSubtitleText(String priceUSD, String percentageChange) {
    TextSpan priceTextWidget = new TextSpan(
        text: "\$$priceUSD\n", style: new TextStyle(color: Colors.black));
    String percentageChangeText = "1 hour: $percentageChange%";
    TextSpan percentageChangeTextWidget;

    if (double.parse(percentageChange) > 0) {
      percentageChangeTextWidget = new TextSpan(
          text: percentageChangeText,
          style: new TextStyle(color: Colors.green));
    } else {
      percentageChangeTextWidget = new TextSpan(
          text: percentageChangeText, style: new TextStyle(color: Colors.red));
    }

    return new RichText(
        text: new TextSpan(
            children: [priceTextWidget, percentageChangeTextWidget]));
  }
}
*/
