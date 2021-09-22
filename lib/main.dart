import 'package:atht_hire_test/home.dart';
import 'package:atht_hire_test/login_page.dart';
import 'package:atht_hire_test/text_field.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          // backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black
            )
          ),
          foregroundColor: Colors.black,
          color: Colors.white
        ),
        inputDecorationTheme: inputDecorationTheme
      ),
    );
  }
}
