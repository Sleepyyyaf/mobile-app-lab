import 'package:flutter/material.dart';

void main() {
 runApp(const Sleepy());
}

class Sleepy extends StatelessWidget {
  const Sleepy({super.key});

  void doSomething() {
    print("Menu button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: doSomething ,
          ),
          backgroundColor: Colors.yellow,
          title: const Text('Sleepyaf'),
        ),
        body: const Center(
          child: Column(
            children: [SizedBox(height: 20,),
              Text('Hello, world!'),
              Text('Hello, world!'),
              Text('Hello, world!'),
              Text('Hello, world!'),
              Text('Hello, world!'),
              
            ],
          ),
        ),
      ),
    );
  }
}