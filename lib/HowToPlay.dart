// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports

import 'Pages.dart';
import 'Ultimate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'WinDetails.dart';
import 'package:flutter/src/material/colors.dart';


class HowToPlay extends StatelessWidget {
  const HowToPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:45,
        backgroundColor: Color.fromARGB(255, 90, 90, 90),
        centerTitle: true,
        title: Text(
          "How to Play",
          style: TextStyle(),
        ),
      ),
      body: Container(
        child: Column(

          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "RULES FOR TIC-TAC-TOE",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Text(
              "1. The game is played on a grid that's 3 squares by 3 squares.",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20,),
            Text(
                " 2. You are X, your friend (or the computer in this case) is O. Players take turns putting their marks in empty squares.",
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 20,),
            Text(
                " 3. The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner.",
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 20,),
            Text(
                "4. When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie.",
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => WinDetails())),
                child: Text("HOW CAN I WIN ?"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey),)),
            SizedBox(height: 8),
            ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Pages())),
                child: Text("Illustration"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey),)),
            SizedBox(height: 8),
            ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Ultimate())),
                child: Text("How to play an Ultimate game"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),)),
          ],
        ),
      ),
    );
  }
}
