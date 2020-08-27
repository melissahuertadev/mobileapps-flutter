import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat_wf/screens/chat_screen.dart';
import 'package:flash_chat_wf/screens/login_screen.dart';
import 'package:flash_chat_wf/screens/registration_screen.dart';
import 'package:flash_chat_wf/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

//void main() => runApp(FlashChat());
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
