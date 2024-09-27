import 'package:flutter/material.dart';
import 'package:gaea/features/app/splash_screen.dart';
import 'package:gaea/features/presentation/pages/home_page.dart';



Future main() async {
  

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gaea',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(child: HomePage(),),
    );
  }
}

