import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Frases Motivacionais'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
    'Os problemas são oportunidades para se mostrar o que sabe.',
    'Nossos fracassos, às vezes, são mais frutíferos do que os êxitos.',
    'Tente de novo. Fracasse de novo. Mas fracasse melhor.',
    'É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo.',
    'Cada cliente é como se fosse primeiro e único.',
    'Mesmo que já tenhas feito uma longa caminhada, há sempre um novo caminho a fazer.',
    'Vender é construir uma ponte entre você e seu cliente e fazê-lo atravessar para o seu lado.',
    'Na prosperidade, nossos amigos nos conhecem; na adversidade, nós é que conhecemos nossos amigos.',
    'A felicidade não está em fazer o que a gente quer, e sim querer o que a gente faz.',
    'Nada acontece a menos que sonhemos antes.'
  ];

  void _incrementCounter() {
    setState(() {

      _numeroAleatorio = new Random().nextInt(10);//0,1,2,3...
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Precione o botão para gerar uma nova frase:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
