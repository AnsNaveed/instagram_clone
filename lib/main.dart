import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_Screen_Layout.dart';
import 'package:instagram_clone/responsive/responsive_screen_layout.dart';
import 'package:instagram_clone/responsive/web_Screen_layout.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/screens/signup_screen.dart';
import 'package:instagram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyDun44tJ-Qq12ik-6PRTqoVyZDmg8FZGSk',
        appId: '1:431234519015:web:45f651b6b7f21468b23742',
        messagingSenderId: '431234519015',
        projectId: 'instagram-clone-dd3f4',
        storageBucket: "instagram-clone-dd3f4.appspot.com",
      ),
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: mobileScreenLayout(),
      //   webScreenLayout: webScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
