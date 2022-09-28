// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports

import 'package:flutter/material.dart';

class Ultimate extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(toolbarHeight:45,
        title:
        Text("How to play an Ultimate game"),
        centerTitle: true,
        backgroundColor: Colors.red

      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "How to play an Ultimate game",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              SizedBox(height: 15.0,),
              Text("To win the game, you have to win three of the larger squares in a row, and to win a large square, you have to win three in a row in the smaller grid inside it",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 15.0,),
              Text("But you can't play wherever you want. At first you play anywhere, but then your opponent should play in the corresponding bigger block for the smaller spot you just played in, and so on.",style: TextStyle(fontSize: 20)),
              SizedBox(height: 15.0,),
              Text("If you play in a small spot corresponding a complete block, your opponent has the complete freedom to play anywhere on the board.",style: TextStyle(fontSize: 20)),
              Image.asset("assets/mWy_BF.gif")
            ],
          ),
        ),
      ),
    );
  }
}
