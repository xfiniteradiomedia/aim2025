import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );
  runApp(AIM2025App());
}

class AIM2025App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AIM2025',
      theme: ThemeData(
        primaryColor: Color(0xFF0077CC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF0077CC),
          primary: Color(0xFF0077CC),
          secondary: Color(0xFFFFCC00),
          background: Colors.white,
          brightness: Brightness.light,
        ),
        fontFamily: 'Tahoma',
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        // More routes will be added as you build additional screens
      },
      debugShowCheckedModeBanner: false,
    );
  }
}