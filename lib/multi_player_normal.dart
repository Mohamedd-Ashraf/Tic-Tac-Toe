// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:i_am_reach/leader_board.dart';
import 'package:provider/provider.dart';
import 'database.dart';
import 'data.dart';
import 'name_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Data.createDB();
  runApp(multi());
}

class multi extends StatelessWidget {
  const multi({Key? key}) : super(key: key);

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
  int counter = 0;
  bool won = false;
  String player1 = '';
  String player2 = '';
  int ScoreOfOh = 0;
  int ScoreOfEx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 9, 9),
      body: Column(
        children: [
          SizedBox(height: 35,),
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
                            Provider.of<PlayerName>(context, listen: false)
                                .Player1()
                                .toString(),
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
                            Provider.of<PlayerName>(context, listen: false)
                                .Player2()
                                .toString(),
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
         IconButton(onPressed: (){
            setState(() {
               displayExOh = ['', '', '', '', '', '', '', '', ''];
                                    counter = 0;
                                    won=false;
            });
                                   }, 
                                    icon: Icon(Icons.refresh,   size: 35.0,color: Colors.grey,)),
          SizedBox(height: 30,)
        ],
      ),
      // TextButton(
      //   onPressed: () => Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (_) => leaderBoard(),
      //     ),
      //   ),
      //   child: const Text("Screen 2"),
      // ),
    );
  }

  void _tapped(int index) {
    setState(() {
      if (won == false && displayExOh[index] == '') {
        //will show O when bool(OH) is true and the position is empty so it don't replace old symbol
        if (OH) {
          displayExOh[index] = 'O';
          OH = !OH;
          counter++;
        }
        //will show X when bool(OH) is false and the position is empty so it don't replace old symbol
        else if (!OH) {
          displayExOh[index] = 'X';
          OH = !OH;
          counter++;
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
      } else if (counter > 8 && won == false) {
        Draw();
      }
    }
  }

  // PlayerName name = PlayerName();
  //showing the winner
  void showWinDialog(String winner) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          if (winner == 'X') {
            // name.Player2();
            ScoreOfEx++;
            OH=false;
            winner = Provider.of<PlayerName>(context, listen: false)
                .Player1()
                .toString();
            print(Provider.of<PlayerName>(context, listen: false)
                    .Player2()
                    .toString() +
                " " +
                ScoreOfEx.toString());
            // displayExOh = ['', '', '', '', '', '', '', '', ''];
            // counter = 0;
            won = false;
            winner = Provider.of<PlayerName>(context, listen: false)
                .Player2()
                .toString();
          } else if (winner == 'O') {
            // name.Player1();
            ScoreOfOh++;
            OH=true;
            winner = Provider.of<PlayerName>(context, listen: false)
                .Player1()
                .toString();
            print(Provider.of<PlayerName>(context, listen: false)
                    .Player1()
                    .toString() +
                " " +
                ScoreOfOh.toString());
            // displayExOh = ['', '', '', '', '', '', '', '', ''];
            // counter = 0;
            won = false;
            winner = Provider.of<PlayerName>(context, listen: false)
                .Player1()
                .toString();
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
        // OH=!OH;
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
  }
}
