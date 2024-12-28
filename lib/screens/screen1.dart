import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height:5,),
        const Text("Welcome to Rentkar", style: TextStyle(
          color: Color.fromARGB(255, 128, 55, 196),
          fontSize: 35,
          fontWeight: FontWeight.w800),),
        Image.asset("assets/onboarding1.png"),
        const SizedBox(height:50,),
         const Text("Rent, Share, and Live Smart.", style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w800),),
        const SizedBox(height:20,),
        Container(
          padding : const EdgeInsets.symmetric(horizontal: 20),
          child: Text("What began as a college hustle to share PlayStations and laptops has blossomed into Rentkar, a platform designed to make life easier, smarter, and more sustainable. Ready to change the way you think about ownership?", style: TextStyle(
            color: Color.fromARGB(255, 90, 87, 87),
            fontSize: 16,
            fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,          
          ),
        ),
        
      ],
    );
  }
}