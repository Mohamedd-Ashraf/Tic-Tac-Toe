// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports

import 'dart:ui';

import 'single_easy.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'hard_single.dart';
import 'main.dart';

TextEditingController player1 = TextEditingController();

class SingleModesPage extends StatelessWidget {
  const SingleModesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight:45,
        centerTitle: true,
        title: const Text("single player modes"),
        backgroundColor: Color.fromARGB(255, 90, 90, 90),
      ),
      body: Container(
        height: 1000,
        width: 1000,
        decoration: const BoxDecoration(

            // color: Color.fromARGB(255, 0, 0, 0),
            image: DecorationImage(
          //   scale: 1.17 ,
          alignment: Alignment.topCenter,
          image: AssetImage("assets/bg-1.jpg"),
          fit: BoxFit.fill,
          //  opacity:10.0,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "  Select your mode  ",
                style: TextStyle(
                  fontSize: 27,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w800,
                  backgroundColor: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 30,
                width: 110,
                child: ElevatedButton(
                  //button style
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 5, 114, 1),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(11)),
                  ),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const singleEasy(),
                    ),
                  ),
                  child: const Text("Medium",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 30,
                width: 130,
                child: ElevatedButton(
                  //button style
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 32, 16),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(11)),
                  ),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const hardSingle(),
                    ),
                  ),
                  child: const Text("HARD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
