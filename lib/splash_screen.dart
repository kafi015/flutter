import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Greeting App',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Hello World!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hey! I am from Network:',
              style: TextStyle(fontSize: 20),
            ),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/1a/24701-nature-natural-beauty.jpg'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hey! I am from Assets:',
              style: TextStyle(fontSize: 20),
            ),
            Image.asset('assets/flutter_dart.png'),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Button Pressed!',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 22),),
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(34.0)),
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Press Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
