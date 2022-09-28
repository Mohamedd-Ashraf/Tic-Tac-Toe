// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports

import 'package:flutter/material.dart';

class WinDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("HOW CAN I WIN"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HOW CAN I WIN AT TIC-TAC-TOE?",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Text(
                "To beat the computer (or at least tie), you need to make use of a little bit of strategy. Strategy means figuring out what you need to do to win.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 15,),
              Text(
                  "Part of your strategy is trying to figure out how to get three Xs in a row. The other part is trying to figure out how to stop the computer from getting three Os in a row.",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 15,),
              Text(
                  "After you put an X in a square, you start looking ahead. Where's the best place for your next X? You look at the empty squares and decide which ones are good choices—which ones might let you make three Xs in a row.",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 15,),
              Text(
                  "You also have to watch where the computer puts its O. That could change what you do next. If the computer gets two Os in a row, you have to put your next X in the last empty square in that row, or the computer will win. You are forced to play in a particular square or lose the game.",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 15,),
              Text(
                  "If you always pay attention and look ahead, you'll never lose a game of Tic-Tac-Toe. You may not win, but at least you'll tie.",
                  style: TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
