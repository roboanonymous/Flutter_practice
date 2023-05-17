import 'package:flutter/material.dart';


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
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
 body: AnimatedBuilder(
        animation: _animationController,
  builder: (BuildContext context, Widget? child) {
    return Container(
      alignment: Alignment.center,
      color: Color.lerp(Colors.blue, Colors.red, _animation.value),
      child: Text(
        'Animated Body',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  },
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