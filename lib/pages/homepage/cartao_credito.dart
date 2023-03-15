import 'package:flutter/material.dart';

class CartaoCredito extends StatefulWidget {
  const CartaoCredito({super.key});

  @override
  State<CartaoCredito> createState() => _CartaoCreditoState();
}

class _CartaoCreditoState extends State<CartaoCredito> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      // color: Color.fromARGB(255, 255, 255, 255),
      child: SizedBox(
        //color: Colors.red,
        height: 100,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: const Text(
                  "Cartão de crédito",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 147, 147, 147), size: 20),
                  onPressed: () {},
                ),
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
              child: const Text(
                "Fatura Atual",
                // ignore: unnecessary_const
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 175, 175, 175),
                ),
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
            child: const Text(
              'R\$ 623,42',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ]),
      ),
    );
  }
}
