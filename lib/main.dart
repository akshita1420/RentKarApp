import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'screens/login_screen.dart';
import 'screens/screen1.dart';
import 'screens/screen2.dart';
import 'screens/screen3.dart';
void main() {
  runApp(const MyApp(
    
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RentkarApp',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'RentkarApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController pageController = PageController();
  String buttonText ="Skip";
  int currentPageIndex=0;
 
  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              currentPageIndex=index;
              if(index==2){
                buttonText="Log in";
              }
              else{
                buttonText="Skip";
              }
              setState(() {});
            },
            children: [   
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    if (currentPageIndex == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    } else {
                      pageController.jumpToPage(2); // Skip to last page
                    }
                  },
                  child: Text(buttonText)),
                SmoothPageIndicator(
                controller: pageController, 
                count: 3
                ),
                currentPageIndex==2 ? SizedBox(width: 10) : GestureDetector(
                  onTap: (){
                    pageController.nextPage(duration: Duration(microseconds: 700), curve: Curves.easeIn);

                  },
                  child: Text(currentPageIndex == 2 ? "Log in" : "Next"),)
                
              ],
            ),

          )
        ],
      )
    );
  }
}
