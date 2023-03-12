import 'package:flutter/material.dart';

class MeusCartoes extends StatefulWidget {
  const MeusCartoes({super.key});

  @override
  State<MeusCartoes> createState() => _MeusCartoesState();
}

class _MeusCartoesState extends State<MeusCartoes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 238, 238),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: const Icon(Icons.credit_card_sharp, color: Colors.black)),
          const Text(
            "Meus cartões",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
