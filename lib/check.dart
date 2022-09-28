

// import 'package:flutter/material.dart';

//   class  InsideTheGame {
//TODO upcomming update to handle the code

//   static void showWinDialog(String winner, BuildContext context, int ScoreOfEx,
//       int ScoreOfOh, bool OH) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           if (winner == 'x') {
//             ScoreOfEx++;
//             winner = "CPU";
//             // displayExOh = ['', '', '', '', '', '', '', '', ''];
//             // counter = 0;
//             // won = false;
//             OH = true;
//           } else if (winner == 'O') {
//             ScoreOfOh++;
            
//             winner = "Player";
//             // displayExOh = ['', '', '', '', '', '', '', '', ''];
//             // counter = 0;
//             // won = false;
//             OH = true;
//           }
//           return AlertDialog(
//             title: Text(
//               "WINNER IS " + winner,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//           );
//         });
//   }

//   static void zbe(){}
  

//   static void checzbe( List<String> displayExOh,
//     bool won,
//     int counter,
//     BuildContext context,
//     int ScoreOfEx,
//     int ScoreOfOh,
//     bool OH,){

//    if (won == false ) {
//       // displayExOh[8] = 'X';
//       //(1)Case
//       if (displayExOh[0] == displayExOh[1] &&
//           displayExOh[0] == displayExOh[2] &&
//           displayExOh[0] != '' ) {
//         won = true;
//         showWinDialog(displayExOh[0], context ,ScoreOfEx , ScoreOfOh , OH);
//       }
//       //(2)Case
//       else if (displayExOh[3] == displayExOh[4] &&
//           displayExOh[3] == displayExOh[5] &&
//           displayExOh[3] != '') {
//         won = true;

//         showWinDialog(displayExOh[3], context ,ScoreOfEx , ScoreOfOh , OH);
//       }
//       //(3)Case
//       else if (displayExOh[6] == displayExOh[7] &&
//           displayExOh[6] == displayExOh[8] &&
//           displayExOh[6] != '') {
//         won = true;

//         showWinDialog(displayExOh[6], context ,ScoreOfEx , ScoreOfOh , OH);
//       }
//       //(4)Case
//       else if (displayExOh[0] == displayExOh[3] &&
//           displayExOh[0] == displayExOh[6] &&
//           displayExOh[0] != '') {
//         won = true;

//         showWinDialog(displayExOh[0], context ,ScoreOfEx , ScoreOfOh , OH);
//       }
//       //(5)Case
//       else if (displayExOh[1] == displayExOh[4] &&
//           displayExOh[1] == displayExOh[7] &&
//           displayExOh[1] != '') {
//         won = true;

//         showWinDialog(displayExOh[1], context ,ScoreOfEx , ScoreOfOh , OH);
//       }
//       //(6)Case
//       else if (displayExOh[2] == displayExOh[5] &&
//           displayExOh[2] == displayExOh[8] &&
//           displayExOh[2] != '') {
//         won = true;

//         showWinDialog(displayExOh[2], context ,ScoreOfEx , ScoreOfOh , OH);
//       }
//       //(7)Case
//       else if (displayExOh[2] == displayExOh[4] &&
//           displayExOh[2] == displayExOh[6] &&
//           displayExOh[2] != '') {
//         won = true;

//         showWinDialog(displayExOh[2], context ,ScoreOfEx , ScoreOfOh , OH);
//       }

//       //(8)Case
//       else if (displayExOh[0] == displayExOh[4] &&
//           displayExOh[0] == displayExOh[8] &&
//           displayExOh[0] != '') {
//         won = true;

//         showWinDialog(displayExOh[0], context ,ScoreOfEx , ScoreOfOh , OH);
//       } else if (counter > 4 && won == false) {
//         Draw(won,context , OH);
//       }
//     }
    
//   }


//   // static void  _cheeeeeeckWinner(
//   //   List<String> displayExOh,
//   //   bool won,
//   //   int counter,
//   //   BuildContext context,
//   //   int ScoreOfEx,
//   //   int ScoreOfOh,
//   //   bool OH,
//   // ) {
//   //   if (won == false ) {
//   //     displayExOh[8] = 'X';
//   //     //(1)Case
//   //     if (displayExOh[0] == displayExOh[1] &&
//   //         displayExOh[0] == displayExOh[2] &&
//   //         displayExOh[0] != '' ) {
//   //       won = true;
//   //       showWinDialog(displayExOh[0], context ,ScoreOfEx , ScoreOfOh , OH);
//   //     }
//   //     //(2)Case
//   //     else if (displayExOh[3] == displayExOh[4] &&
//   //         displayExOh[3] == displayExOh[5] &&
//   //         displayExOh[3] != '') {
//   //       won = true;

//   //       showWinDialog(displayExOh[3], context ,ScoreOfEx , ScoreOfOh , OH);
//   //     }
//   //     //(3)Case
//   //     else if (displayExOh[6] == displayExOh[7] &&
//   //         displayExOh[6] == displayExOh[8] &&
//   //         displayExOh[6] != '') {
//   //       won = true;

//   //       showWinDialog(displayExOh[6], context ,ScoreOfEx , ScoreOfOh , OH);
//   //     }
//   //     //(4)Case
//   //     else if (displayExOh[0] == displayExOh[3] &&
//   //         displayExOh[0] == displayExOh[6] &&
//   //         displayExOh[0] != '') {
//   //       won = true;

//   //       showWinDialog(displayExOh[0], context ,ScoreOfEx , ScoreOfOh , OH);
//   //     }
//   //     //(5)Case
//   //     else if (displayExOh[1] == displayExOh[4] &&
//   //         displayExOh[1] == displayExOh[7] &&
//   //         displayExOh[1] != '') {
//   //       won = true;

//   //       showWinDialog(displayExOh[1], context ,ScoreOfEx , ScoreOfOh , OH);
//   //     }
//   //     //(6)Case
//   //     else if (displayExOh[2] == displayExOh[5] &&
//   //         displayExOh[2] == displayExOh[8] &&
//   //         displayExOh[2] != '') {
//   //       won = true;

//   //       showWinDialog(displayExOh[2], context ,ScoreOfEx , ScoreOfOh , OH);
//   //     }
//   //     //(7)Case
//   //     else if (displayExOh[2] == displayExOh[4] &&
//   //         displayExOh[2] == displayExOh[6] &&
//   //         displayExOh[2] != '') {
//   //       won = true;

//   //       showWinDialog(displayExOh[2], context ,ScoreOfEx , ScoreOfOh , OH);
//   //     }

//   //     //(8)Case
//   //     else if (displayExOh[0] == displayExOh[4] &&
//   //         displayExOh[0] == displayExOh[8] &&
//   //         displayExOh[0] != '') {
//   //       won = true;

//   //       showWinDialog(displayExOh[0], context ,ScoreOfEx , ScoreOfOh , OH);
//   //     } else if (counter > 4 && won == false) {
//   //       Draw(won,context , OH);
//   //     }
//   //   }
//   // }

//   //showing the winner
// //   void showWinDialog(String winner , int ScoreOfEx , ScoreOfOh , bool OH ) {

// //   }

//  static void Draw(bool won, BuildContext context , bool OH) {
//     if (won == false) {
//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return const AlertDialog(
//               title: Text(
//                 "NO One Won it's DRAW",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             );
//           });
//       won = true;
//     }
//     // displayExOh = ['', '', '', '', '', '', '', '', ''];
//     // counter = 0;
//     // won = false;
//     OH = true;
//   }
// }




  