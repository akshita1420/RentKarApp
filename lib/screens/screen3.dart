import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/onboarding3.png"),
        const SizedBox(height:30,),
        const Text("Join the Sharing Revolution", style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w800),),
        const SizedBox(height:20,),
        Container(
          padding : const EdgeInsets.symmetric(horizontal: 20),
          child: Text("We’re fighting overconsumption by bringing you a world where renting is the norm, not the exception. Rentkar empowers you to access the things you love without the commitment of ownership.", style: TextStyle(
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