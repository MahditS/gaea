import 'package:flutter/material.dart';
import 'package:gaea/features/presentation/widgets/gradientText.dart';

class SplashScreen extends StatefulWidget {
   final Widget child;
  const SplashScreen({super.key, required this.child});
 

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState()
  {
    super.initState();
    Future.delayed(const Duration(seconds: 3), 
                  (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child), 
                      (route) => false);
                    }
                  );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300,),
            GradientText('Gaea',style: const TextStyle(fontSize: 40),gradient: LinearGradient(colors: [Color.fromARGB(255, 21, 210, 0),Color.fromARGB(255, 140, 255, 0),]),
),
            Text("Save a life. Use Gaea.", style: TextStyle(color: Color.fromARGB(255, 28, 187, 0), fontSize: 15))
          ],
        ),
    ));
  }
}