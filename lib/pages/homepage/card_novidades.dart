import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardNovidades extends StatefulWidget {
  const CardNovidades({super.key});

  @override
  State<CardNovidades> createState() => _CardNovidadesState();
}

class _CardNovidadesState extends State<CardNovidades> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: 90,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 10),
            width: 280,
            height: 80,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: 'E você, o que vai fazer com seu\n'),
                    TextSpan(
                      text: 'Pedacinho',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '? Decida agora!'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 10),
            width: 280,
            height: 80,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Pix no Crédito:',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: ' aproveite os',
                    ),
                    TextSpan(text: '\ndescontos da Black Friday.'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 10),
            width: 280,
            height: 80,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Novidade!',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: ' Conheça a ferramenta',
                    ),
                    TextSpan(text: '\nde Controle de Gastos do Nubank.'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
