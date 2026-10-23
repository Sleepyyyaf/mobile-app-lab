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
          backgroundColor: Colors.red,
          title: const Text('Profile'),
          centerTitle: false,
        ),
        body:  Center(
          child: Column(
            children: [
            const SizedBox(height: 20,),
            ClipOval(
              child: Image.asset(
                'assets/image/Amba Tu Kang copy.jpeg',
                width: 200,
                height: 200,
                fit: BoxFit.cover
              ),
            ),
            const SizedBox(height: 10,),
            const Text("Amba Tu Kang", 
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 6),
                  decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 231, 48, 115),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, color: Color.fromARGB(255, 236, 249, 247), size: 16,),
                    SizedBox(width: 4,),
                    Text("Student", style: TextStyle(color: Colors.white, fontSize: 16)),
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}