import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: Colors.lightGreen[200],
            padding: constraints.maxWidth < 500
                ? EdgeInsets.zero
                : EdgeInsets.all(30.0),
            child: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 500),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                  horizontal: 25.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Welcome to the app, please log in"),
                    TextField(
                      decoration: InputDecoration(labelText: "username"),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: "password"),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          "/home",
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
