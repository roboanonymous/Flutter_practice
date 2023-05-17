import 'package:flutter/material.dart';


class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    
  bool _isButtonPressed = true;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 235, 194, 27), //background color of appbar
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
  children: [
    AnimatedContainer(
      duration: const Duration(microseconds: 500),
      width: 200.0,
      height: 200.0,
       color: _isButtonPressed ? Colors.blue : Colors.red,
    )
  ],
 ),

    //     AnimatedContainer(
    //   duration: const Duration(seconds: 1),
    //   width: 200.0,
    //   height: 200.0,
    //   color: Colors.blue,
    // ),



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