// import 'dart:html';
// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:i_am_reach/leader_board.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/check.dart';
import 'database.dart';
import 'data.dart';
import 'name_provider.dart';

class hardSingle extends StatelessWidget {
  const hardSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool OH = true;
  List<String> displayExOh = ['', '', '', '', '', '', '', '', ''];
  //counter to count the number of rounds
  int counter = 0;
  String player1 = '';
  String player2 = '';
  int ScoreOfOh = 0;
  int ScoreOfEx = 0;
  //boolean to check if the game endned with win
  bool won = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 9, 9),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Expanded(
            flex: 0,
            child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Text(
                            "Player",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            ScoreOfOh.toString(),
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Text(
                            "CPU",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            ScoreOfEx.toString(),
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 18,
            child: GridView.builder(
                //used to build the layout (3 x 3)
                // 9 boxes
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                // (index) is an integer to specify the position of the element
                itemBuilder: (BuildContext context, int index) {
                  //like  setState
                  return GestureDetector(
                    //function called when clicking on mouse
                    onTap: () {
                      _tapped(index);
                    },
                    child: Container(
                        // borders colors
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(
                          child: Text(
                            displayExOh[index],
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        )),
                  );
                }),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  // InsideTheGame insideTheGame  = InsideTheGame(); 
                  // InsideTheGame.checzbe(displayExOh, won, counter, context, ScoreOfEx, ScoreOfOh, OH);
                  displayExOh = ['', '', '', '', '', '', '', '', ''];
                  counter = 0;
                  won = false;
                });
              },
              icon: Icon(Icons.refresh, size: 35.0, color: Colors.grey)),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      if (won == false && displayExOh[index] == '') {
        //will show O when bool(OH) is true and the position is empty so it don't replace old symbol
        if (OH) {
          displayExOh[index] = 'O';
          counter++;
          if (counter <= 1) {
            CPU_Turn();
          } else {
            CPU_Test();
          }
        }
        //will show X when bool(OH) is false and the position is empty so it don't replace old symbol
        else if (!OH) {
          displayExOh[index] = 'X';
          counter++;
          //we let the first 2 rounds be randoms cuz the player can't win from only 2 round and after that we test if he actually goin to win
          //after every play from the user we go to cpu play

          if (counter <= 1 && won == false) {
            CPU_Turn();
          } else {
            CPU_Test();
          }
        }
        _checkWinner();
      }
    });
  }

  //8 cases of winning in (x-o)
  void _checkWinner() {
    if (won == false) {
      // displayExOh[8] = 'X';
      //(1)Case
      if (displayExOh[0] == displayExOh[1] &&
          displayExOh[0] == displayExOh[2] &&
          displayExOh[0] != '') {
        won = true;
        showWinDialog(displayExOh[0]);
      }
      //(2)Case
      else if (displayExOh[3] == displayExOh[4] &&
          displayExOh[3] == displayExOh[5] &&
          displayExOh[3] != '') {
        won = true;

        showWinDialog(displayExOh[3]);
      }
      //(3)Case
      else if (displayExOh[6] == displayExOh[7] &&
          displayExOh[6] == displayExOh[8] &&
          displayExOh[6] != '') {
        won = true;

        showWinDialog(displayExOh[6]);
      }
      //(4)Case
      else if (displayExOh[0] == displayExOh[3] &&
          displayExOh[0] == displayExOh[6] &&
          displayExOh[0] != '') {
        won = true;

        showWinDialog(displayExOh[0]);
      }
      //(5)Case
      else if (displayExOh[1] == displayExOh[4] &&
          displayExOh[1] == displayExOh[7] &&
          displayExOh[1] != '') {
        won = true;

        showWinDialog(displayExOh[1]);
      }
      //(6)Case
      else if (displayExOh[2] == displayExOh[5] &&
          displayExOh[2] == displayExOh[8] &&
          displayExOh[2] != '') {
        won = true;

        showWinDialog(displayExOh[2]);
      }
      //(7)Case
      else if (displayExOh[2] == displayExOh[4] &&
          displayExOh[2] == displayExOh[6] &&
          displayExOh[2] != '') {
        won = true;

        showWinDialog(displayExOh[2]);
      }

      //(8)Case
      else if (displayExOh[0] == displayExOh[4] &&
          displayExOh[0] == displayExOh[8] &&
          displayExOh[0] != '') {
        won = true;

        showWinDialog(displayExOh[0]);
      } else if (counter > 4 && won == false) {
        Draw();
      }
    }
  }

  //showing the winner
  void showWinDialog(String winner) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          if (winner == 'x') {
            ScoreOfEx++;
            winner = "CPU";
            // displayExOh = ['', '', '', '', '', '', '', '', ''];
            // counter = 0;
            // won = false;
            OH = true;
          } else if (winner == 'O') {
            ScoreOfOh++;
            winner = "Player";
            // displayExOh = ['', '', '', '', '', '', '', '', ''];
            // counter = 0;
            // won = false;
            OH = true;
          }
          return AlertDialog(
            title: Text(
              "WINNER IS " + winner,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        });
  }

  void Draw() {
    if (won == false) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text(
                "NO One Won it's DRAW",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          });
      won = true;
    }
    // displayExOh = ['', '', '', '', '', '', '', '', ''];
    // counter = 0;
    // won = false;
    OH = true;
  }

  void CPU_Turn() {
    _checkWinner();
    if (won == false) {
      Random random = new Random();
      int randomNumber = random.nextInt(9);

      if (displayExOh[randomNumber] == "") {
        displayExOh[randomNumber] = 'x';
      } else {
        for (var i = 0; i < 9; i++) {
          if (displayExOh[i] == "") {
            CPU_Turn();

            break;
          }
        }
        print(randomNumber);
      }
    }
    _checkWinner();
  }

//18 case to test if the palyer in his way to win or not
  void CPU_Test() {
    if (displayExOh[0] == 'O' &&
        displayExOh[4] == 'O' &&
        displayExOh[8] == '') {
      displayExOh[8] = 'x';
      print("first case");
    } else if (displayExOh[0] == 'O' &&
        displayExOh[8] == 'O' &&
        displayExOh[4] == '') {
      displayExOh[4] = 'x';
      print("first2 case");
    } else if (displayExOh[4] == 'O' &&
        displayExOh[8] == 'O' &&
        displayExOh[0] == '') {
      displayExOh[0] = 'x';
      print("first3 case");
    } else if (displayExOh[0] == 'O' &&
        displayExOh[1] == 'O' &&
        displayExOh[2] == '') {
      displayExOh[2] = 'x';
      print("second case");
    } else if (displayExOh[0] == 'O' &&
        displayExOh[2] == 'O' &&
        displayExOh[1] == '') {
      displayExOh[1] = 'x';
      print("second2 case");
    } else if (displayExOh[2] == 'O' &&
        displayExOh[1] == 'O' &&
        displayExOh[2] == '') {
      displayExOh[0] = 'x';
      print("second3 case");
    } else if (displayExOh[0] == 'O' &&
        displayExOh[3] == 'O' &&
        displayExOh[6] == '') {
      displayExOh[6] = 'x';
      print("third case");
    } else if (displayExOh[0] == 'O' &&
        displayExOh[6] == 'O' &&
        displayExOh[3] == '') {
      displayExOh[3] = 'x';
      print("third2 case");
    } else if (displayExOh[6] == 'O' &&
        displayExOh[3] == 'O' &&
        displayExOh[0] == '') {
      displayExOh[0] = 'x';
      print("third3 case");
    } else if (displayExOh[3] == 'O' &&
        displayExOh[4] == 'O' &&
        displayExOh[5] == '') {
      displayExOh[5] = 'x';
      print("fourth case");
    } else if (displayExOh[3] == 'O' &&
        displayExOh[5] == 'O' &&
        displayExOh[4] == '') {
      displayExOh[4] = 'x';
      print("fourth2 case");
    } else if (displayExOh[5] == 'O' &&
        displayExOh[4] == 'O' &&
        displayExOh[3] == '') {
      displayExOh[3] = 'x';
      print("fourth3 case");
    } else if (displayExOh[6] == 'O' &&
        displayExOh[7] == 'O' &&
        displayExOh[8] == '') {
      displayExOh[8] = 'x';
      print("fifth case");
    } else if (displayExOh[6] == 'O' &&
        displayExOh[8] == 'O' &&
        displayExOh[7] == '') {
      displayExOh[7] = 'x';
      print("fifth2 case");
    } else if (displayExOh[8] == 'O' &&
        displayExOh[7] == 'O' &&
        displayExOh[6] == '') {
      displayExOh[6] = 'x';
      print("fifth3 case");
    } else if (displayExOh[2] == 'O' &&
        displayExOh[4] == 'O' &&
        displayExOh[6] == '') {
      displayExOh[6] = 'x';
      print("sixth case");
    } else if (displayExOh[2] == 'O' &&
        displayExOh[6] == 'O' &&
        displayExOh[4] == '') {
      displayExOh[4] = 'x';
      print("sixth2 case");
    } else if (displayExOh[6] == 'O' &&
        displayExOh[4] == 'O' &&
        displayExOh[2] == '') {
      displayExOh[2] = 'x';
      print("sixth3 case");
    } else if (displayExOh[1] == 'O' &&
        displayExOh[4] == 'O' &&
        displayExOh[7] == '') {
      displayExOh[7] = 'x';
      print("seventh case");
    } else if (displayExOh[1] == 'O' &&
        displayExOh[7] == 'O' &&
        displayExOh[4] == '') {
      displayExOh[4] = 'x';
      print("seventh2 case");
    } else if (displayExOh[4] == 'O' &&
        displayExOh[7] == 'O' &&
        displayExOh[1] == '') {
      displayExOh[1] = 'x';
      print("seventh3 case");
    } else if (displayExOh[2] == 'O' &&
        displayExOh[5] == 'O' &&
        displayExOh[8] == '') {
      displayExOh[8] = 'x';
      print("eighth case");
    } else if (displayExOh[2] == 'O' &&
        displayExOh[8] == 'O' &&
        displayExOh[5] == '') {
      displayExOh[5] = 'x';
      print("eighth3 case");
    } else if (displayExOh[8] == 'O' &&
        displayExOh[5] == 'O' &&
        displayExOh[2] == '') {
      displayExOh[2] = 'x';
      print("eighth3 case");
    } else {
      CPU_Turn();
    }
  }
}
