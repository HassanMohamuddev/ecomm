import "package:ecomm/features/home/ui/home.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: const Home(),
    );
  }
}



/* 
"event" -> anything on the ui pass on event to the -> 
"Bloc" -> take that event do some logic and pass to -> 
"State" -> state update ui 
*/