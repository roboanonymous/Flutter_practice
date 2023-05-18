import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimationApp extends StatefulWidget {
  const AnimationApp({super.key});

  @override
  State<AnimationApp> createState() => _AnimationAppState();
}

class _AnimationAppState extends State<AnimationApp> with SingleTickerProviderStateMixin {



  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds:5),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 200.0).animate(_animationController);
    _animationController.addListener(() {
      setState(() {
        
      });
    });
    _animationController.forward();
  }

  // @override
  // void dispose() {
  //   _animationController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 235, 194, 27), //background color of appbar
          title:const Text("My AppBar"), //title aof appbar
          centerTitle: true,

           actions: [IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.scoreboard),
          ),    
           ]
        
      ),
      drawer:  Drawer(
        backgroundColor: Color.fromARGB(255, 196, 179, 23),
          child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 231, 201, 11),
        ),
        child: Text('Drawer Header'),
        
      ),
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),

 ),
 body: Column(
  children: [Container(
    width: 200,
    height:200,
    color: Colors.blue,
  ), 
  AnimatedTextKit(
  animatedTexts: [
    TypewriterAnimatedText(
      'Good Morning',
      textStyle: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
      speed: const Duration(milliseconds: 200),
    ),
       FadeAnimatedText(
      'Fade First',
      textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    ),
    ScaleAnimatedText(
      'Then Scale',
      textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
    ),
  ],
  
  totalRepeatCount: 4,
  pause: const Duration(milliseconds: 100),
  displayFullTextOnTap: true,
  stopPauseOnTap: true,
),


  ]
 ),


        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            label: 'Home',  
            backgroundColor: Colors.green  

          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
            label: 'Search',  
            backgroundColor: Colors.yellow  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
            label: 'Profile',  
            backgroundColor: Colors.blue,  
          ),  

        ],  
        ),

    );
  }
}