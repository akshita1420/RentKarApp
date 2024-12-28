import 'package:flutter/material.dart';

class Otpdone extends StatelessWidget {
  const Otpdone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 230, 163, 18), // Set background color to yellow
      body: Center(
        child: Text(
          'You are Onboard',
          style: TextStyle(fontSize: 35, color: const Color.fromARGB(255, 246, 246, 246),fontWeight: FontWeight.bold ),
        ),
      ),
    );
  }
}
