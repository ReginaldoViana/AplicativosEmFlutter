import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "“Motivação é aquilo que te faz começar. Hábito é aquilo que te faz continuar.” – Jim Ryun",
    "“Ser um empreendedor é executar os sonhos, mesmo que haja riscos. É enfrentar os problemas, mesmo não tendo forças. É caminhar por lugares desconhecidos, mesmo sem bússola. É tomar atitudes que ninguém tomou. É ter consciência de que quem vence sem obstáculos triunfa sem glória.” – Augusto Cury",
    "“Você falhar uma vez não significa que vá falhar sempre.” –Marilyn Monroe",
    "“Nada é menos produtivo do que tornar eficiente algo que nem deveria ser feito.” – Peter Drucker",
    "“As pessoas podem duvidar do que você diz, mas elas acreditarão no que você faz.” – Lewis Cass",
    "“Coragem é a resistência e o domínio do medo, não a ausência dele.” – Mark Twain",
    "“Você pode encarar um erro como uma besteira a ser esquecida, ou como um resultado que aponta a uma nova direção.” – Steve Jobs",
    "“Todo mundo começa forte. O sucesso vem para aqueles que têm um compromisso inabalável de continuar assim até o fim. ” –  Howard Schultz, CEO do Startbucks",
    "“Às vezes nós olhamos tanto tempo para uma porta que se fecha que vemos muito tarde outra que está aberta.” – Alexander Graham Bell",
    "“Daqui a 20 anos você estará mais decepcionado pelas coisas que você não fez, do que pelas que fez. Então, jogue fora suas amarras, navegue para longe do porto seguro, pegue os ventos em suas velas. Explore, sonhe, descubra” – Mark Twain.",
    "“Você nunca pode atravessar o oceano até que você tenha coragem de perder de vista a costa.” – Cristóvão Colombo.",
    "“As pessoas costumam dizer que a motivação não dura. Bem, nem o banho. É por isso que recomendamos isso diariamente” – Zig Ziglar.",
    "“Se você ouve uma voz dentro de você dizendo ‘você não pode pintar’, então pinte e essa voz será silenciada” – Vincent Van Gogh",
    "“Peça, e lhes será dado; procure e encontrará; bata, e a porta será aberta para você” – Jesus",
    "“A única pessoa que você está destinado a se tornar é a pessoa que você decide ser” – Ralph Waldo Emerson",
    "“Quando eu deixar de ser o que sou, eu irei me tornar o que poderia ser” – Lao Tzu.",
    "“Não é o mais forte que sobrevive, nem o mais inteligente. Quem sobrevive é o mais disposto à mudança” – Charles Darwin",
    "“Se você quer uma mudança permanente, pare de focar no tamanho de seus problemas e comece a focar no seu tamanho” – T. Harv Eker",
    "“Não espere até que tudo esteja perfeito. Nunca estará tudo bem. Sempre haverá desafios e obstáculos. E daí? Comece agora. A cada passo dado, você estará mais forte, mais habilidoso, mais confiante e mais bem-sucedido” – Mark Victor Hansen",
    "“O homem que remove montanhas sempre começa retirando pequenas pedras do caminho” – provérbio chinês",
    "“Ninguém vai bater tão forte como a vida, mas a questão não é o quão forte você consegue bater. É o quão forte você consegue apanhar e continuar seguindo em frente. É o quanto você consegue aguentar e continuar seguindo em frente. A vitória é feita assim. A vida já é difícil normalmente, mas, em alguns momentos, ela pode até te derrubar. No entanto, é preciso levantar sempre.” – Rocky Balboa, boxeador",

  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){

    var _numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[_numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
