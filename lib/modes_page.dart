// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports

import 'dart:ui';
import 'package:flutter/material.dart';
import 'multi_player_name_page.dart';
import 'multi_player_normal.dart';
import 'single_modes_page.dart';
import 'ultimate_tic_tac.dart';

TextEditingController player1 = TextEditingController();
TextEditingController player2 = TextEditingController();

class ModesPage extends StatelessWidget {
  const ModesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("screen rebuild");
    return Scaffold(
      appBar: AppBar(toolbarHeight:45,
        centerTitle: true,
        title: const Text("Modes Page"),
        backgroundColor: Color.fromARGB(255, 90, 90, 90),
      ),
      body: Container(
        // background image
        height: 1000,
        width: 1000,
        decoration: const BoxDecoration(

            // color: Color.fromARGB(255, 0, 0, 0),
            image: DecorationImage(
          //   scale: 3.0 ,
          alignment: Alignment.topCenter,
          image: AssetImage("assets/mode.gif"),
          fit: BoxFit.contain,
          //  opacity:10.0,
        )),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 350),
              const Text(
                "Select your mode ",
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(155, 123, 132, 255),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 30),

// elevated single button
              Container(
                height: 30,
                width: 110,
                child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const SingleModesPage(),
                          ),
                        ),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(11)),
                      //     primary: Colors.black,
                    ),
                    child: const Text(
                      'Single',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    )),
              ),

              const SizedBox(height: 20),

              Container(
                height: 30,
                width: 150,
                child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const multiplayerModesPage(),
                          ),
                        ),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(11)),
                    ),
                    child: const Text(
                      'Multiplayer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    )),
              ),
              const SizedBox(height: 20),

              Container(
                height: 30,
                width: 180,
                child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const UltimateTicTac(),
                          ),
                        ),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(11)),
                    ),
                    child: const Text(
                      'Ultimate',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
