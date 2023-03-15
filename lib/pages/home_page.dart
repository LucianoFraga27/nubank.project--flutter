import 'package:flutter/material.dart';

import 'homepage/card_novidades.dart';
import 'homepage/cartao_credito.dart';
import 'homepage/icones.dart';
import 'homepage/meus_cartoes.dart';
import 'homepage/saldo_conta.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarIcons(),
      body: _body(),
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _appBarNamed(),
          const SizedBox(height: 10),
          const SaldoConta(),
          const SizedBox(height: 10),
          const IconesPage(),
          const SizedBox(height: 10),
          const MeusCartoes(),
          const SizedBox(height: 10),
          const CardNovidades(),
          const SizedBox(height: 15),
          const Divider(
            thickness: 2.0,
          ),
          const CartaoCredito(),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  BottomAppBar _bottomAppBar() {
    return BottomAppBar(
        color: const Color.fromARGB(255, 238, 238, 238),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.compare_arrows_sharp,
                  color: Colors.purple, size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.monetization_on_sharp,
                  color: Color.fromARGB(255, 147, 147, 147), size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_bag_rounded,
                  color: Color.fromARGB(255, 147, 147, 147), size: 30),
              onPressed: () {},
            ),
          ],
        ));
  }

  AppBar _appBarIcons() {
    return AppBar(
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(Icons.remove_red_eye_sharp),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.help_center),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.email_sharp),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.person),
        onPressed: () {},
      ),
    );
  }

  Container _appBarNamed() {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: const Text(
          "Olá, Luciano",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
