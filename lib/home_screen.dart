import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Lottery winning number is 5',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)),
            child: x == 5
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done_all,
                          color: Colors.green,
                          size: 40,
                        ),
                        Center(
                            child: Text(
                          'Congratulations you have won the lottery, your lucky number is $x',
                          textAlign: TextAlign.center,
                          style: const TextStyle(),
                        )),
                      ],
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 40,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Better Luck Next Time your number is $x\ntry again',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(8);
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
