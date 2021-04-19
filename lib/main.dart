import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Dice Application'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/newbg.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Expanded(child: Image.asset('assets/diceLogo.png',),),


                Row(
                    children: <Widget>[
                      Expanded(child: Image.asset('assets/dice1.png',),),
                      Expanded(child: Image.asset('assets/dice1.png',),),
                    ]
                ),
                Flexible(child: RaisedButton(color:Colors.red[900],onPressed: (){},
                  child: Text('Roll', style: TextStyle(fontSize:20,color: Colors.white),),

                ),
                ),
                Flexible(child: Text('Good Luck',style: TextStyle(fontSize:25,fontFamily: 'Lobster'),),)
              ],


            )
        )


    );


  }
}