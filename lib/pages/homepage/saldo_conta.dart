import 'package:flutter/material.dart';

class SaldoConta extends StatefulWidget {
  const SaldoConta({super.key});

  @override
  State<SaldoConta> createState() => _SaldoContaState();
}

class _SaldoContaState extends State<SaldoConta> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.red,
      height: 100,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Text(
                "Conta",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios_rounded,
                    color: Color.fromARGB(255, 147, 147, 147), size: 20),
                onPressed: () {},
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: const Text(
            'R\$ 4.815,16',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
      ]),
    );
  }
}
