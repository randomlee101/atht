import 'package:atht_hire_test/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 54.0, horizontal: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Welcome\nBack",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 46),
                    ),
                    SizedBox(
                      height: 42,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email".toUpperCase()),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: "Password".toUpperCase()),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Forgot password? Reset Here",
                        ),
                      ],
                    ),
                    SizedBox(height: 48),
                    InkWell(
                      onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home())),
                      child: Container(
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            color: Colors.purple[900],
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 2,
                                  blurRadius: 2)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Log In", style: TextStyle(color: Colors.white, fontSize: 16),),
                            CircleAvatar(
                              radius: 12,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                              ),
                              backgroundColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Text("Don't have an account? Sign Up"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
