import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var diceNumber = 1;
  void generateRandomNumber() {
    var range = Random();
    var randomNumber = range.nextInt(6) + 1;
    // print(randomNumber);
    setState(() {
      diceNumber = randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage('assets/dice-images/dice-$diceNumber.png'),
                  fit: BoxFit.cover,
                ),
              ),
              // child: ,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: generateRandomNumber,
              child: const Text(
                'Roll Dice',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
