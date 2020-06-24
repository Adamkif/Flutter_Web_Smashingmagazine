import 'package:flutter/material.dart';

import 'content.dart';
import 'menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(
          title: Text("Adam"),
        ),
        drawer: MediaQuery.of(context).size.width < 500
            ? Drawer(
                child: Menu(),
              )
            : null,
        body: SafeArea(
          child: Center(
            child: MediaQuery.of(context).size.width < 500
                ? Content()
                : Row(
                    children: [
                      Container(
                        // This width for drawer
                        width: 200.0,
                        child: Menu(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 200.0,
                        child: Content(),
                      )
                    ],
                  ),
          ),
        ),
      );
}
