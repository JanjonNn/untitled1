import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/proviers/Userr_Function_Provider.dart';
import 'package:untitled1/proviers/userprovider.dart';
import 'package:untitled1/signup.dart';
import 'package:untitled1/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => loginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => signupProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Userprovider(),
        ),
      ],
      child: MaterialApp(home: Users(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
