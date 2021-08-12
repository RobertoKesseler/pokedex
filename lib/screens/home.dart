import 'package:flutter/material.dart';
import 'package:pokedex/models/infos.dart';
import 'package:pokedex/screens/widgets/details.dart';
import 'package:pokedex/screens/widgets/weaknesses.dart';
import '../style.dart';

class Home extends StatelessWidget {
  final info = Infos(
    photo: "assets/images/charmander.png",
    description: [
      "Tem preferência por coisas quentes. Quando chove diz-se que o vapor",
      "jorra da ponta da cauda",
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redTheme,
        title: Text(
          "Charmander #004",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Image.asset("assets/images/logo.png"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset(info.photo),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 8),
            child: Text(
              "Tem preferência por coisas quentes. Quando chove diz-se que o vapor jorra da ponta da cauda",
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
          ),
          Details(info),
          Padding(
            padding: const EdgeInsets.only(top: 27, right: 237),
            child: Text(
              "Fraquezas",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Weaknesses(),
        ],
      )),
    );
  }
}
