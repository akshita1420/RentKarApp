import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/onboarding2.png"),
        const SizedBox(height:50,),
        const Text("Get More, Own Less.", style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w800),),
        const SizedBox(height:20,),
        Container(
          padding : const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Access everything you need, when you need it—whether it’s the latest gadgets or a gaming console for the weekend. Save money, reduce waste, and enjoy the freedom of renting without the clutter of ownership.", style: TextStyle(
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