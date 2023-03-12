import 'package:flutter/material.dart';

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

  Column _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _appBarNamed(),
        SizedBox(height: 10),
        Container(
          //color: Colors.red,
          height: 100,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      "Conta",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 17,
                        color: Color.fromARGB(255, 147, 147, 147),
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                'R\$ 25.600,54',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ]),
        ),
      ],
    );
  }

  BottomAppBar _bottomAppBar() {
    return BottomAppBar(
        color: const Color.fromARGB(255, 238, 238, 238),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.compare_arrows_sharp,
                  color: Color.fromARGB(255, 147, 147, 147), size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.monetization_on_sharp,
                  color: Color.fromARGB(255, 147, 147, 147), size: 30),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag_rounded,
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
