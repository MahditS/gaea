import 'package:flutter/material.dart';
import 'package:gaea/features/presentation/widgets/gradientText.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 650.0),
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.start,
          children: 
          [
            GradientText('Gaea',style: const TextStyle(fontSize: 40),gradient: LinearGradient(colors: [Color.fromARGB(255, 21, 210, 0),Color.fromARGB(255, 140, 255, 0),]),),
            GestureDetector(
              onTap:() {},
              child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color.fromARGB(255, 18, 213, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.report),
                Text("Report Disaster", style: TextStyle(fontSize: 15),),
              ],
                        ),
                    ),
                    ),
            ),
            GestureDetector(
              onTap:() {},
              child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color.fromARGB(255, 18, 213, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.map),
                Text("View Disaster Map", style: TextStyle(fontSize: 15),),
              ],
                        ),
                    ),
                    ),
            ),
            GestureDetector(
              onTap:() {},
              child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color.fromARGB(255, 18, 213, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.flood),
                Text("Potential Disasters", style: TextStyle(fontSize: 15),),
              ],
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