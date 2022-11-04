import 'package:flutter/material.dart'

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key key}) : super(key: key);

  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Probando Flutter -MyApp-',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key}) : super(key: key);

  //final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  //int _counter = 0;
  /*
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context){
    return Container(
      child: child,
    );
    /*return Scaffold(
      appBar: AppBar(
        title: Text('Probando Flutter -MyHomePage-'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Has pulsado el botón esta cantidad de veces:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );*/
  }
}
