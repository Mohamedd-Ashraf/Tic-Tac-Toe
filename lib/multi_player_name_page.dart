// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'multi_player_normal.dart';
import 'name_provider.dart';

TextEditingController player1 = TextEditingController();
TextEditingController player2 = TextEditingController();
bool obs = true ; 
Icon passIcon = Icon(Icons.remove_red_eye);
int counter =0;
var valkey = GlobalKey<FormState>();

class multiplayerModesPage extends StatefulWidget {
  const multiplayerModesPage({Key? key}) : super(key: key);

  @override
  State<multiplayerModesPage> createState() => _multiplayerModesPageState();
}

class _multiplayerModesPageState extends State<multiplayerModesPage> {
  @override
  Widget build(BuildContext context) {
    print("screen rebuild");
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        centerTitle: true,
        title: const Text("Two players"),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Form(
        key: valkey,
        child: Container(
          // Background ( Decoration ) Image
          height: 1000,
          width: 1000,
          decoration: const BoxDecoration(

              // color: Color.fromARGB(255, 0, 0, 0),
              image: DecorationImage(
            //   scale: 1.17 ,
            alignment: Alignment.topCenter,
            image: AssetImage("assets/bg-3.jpeg"),
            fit: BoxFit.cover,
          )),

          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Enter Your Names",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please Enter Name For The First Player");
                        }
                        return null;
                      },

                      strutStyle: StrutStyle(),
                      // decoration: InputDecoration,
                      autofocus: true,
                      // strutStyle: StrutStyle(height:30),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      controller: player1,

                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.app_registration_outlined,
                            color: Colors.grey,
                          ),
                          labelText: "Player 1",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 19),
                          hintText: "First Name",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          )),
                    ),
                    TextFormField(
                      obscureText: obs,
                      
                       validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please Enter Name For The Secomd Player");
                        }
                        return null;
                      },
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      controller: player2,
                      decoration:  InputDecoration(
                       suffix: IconButton(onPressed:  () {
                        setState(() {
                         
                        obs = !obs;
                 
                          

                        });


                       }, icon: Icon(!obs ? Icons.visibility : Icons.visibility_off) , color: Colors.grey),
                         
                          labelText: "Player 2",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 19),
                          hintText: "second Name",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          )),
                    ),
                    Consumer<PlayerName>(
                      builder: (context, name_provider, _) => Text(
                        name_provider.name,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                    SizedBox(height: 50),
                    OutlinedButton(
                      onPressed: () {
                        if (valkey.currentState!.validate()){

                        Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const multi(),
                        ),
                      );
                        }

                      },
                      style: OutlinedButton.styleFrom(
                        primary: Colors.blue,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(11)),
                        // RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      child: const Text(
                        'Gooo !!',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 17, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}





              // ElevatedButton(
              //   onPressed: () {
              //     Provider.of<PlayerName>(context, listen: false).Player1();
              //     Provider.of<PlayerName>(context, listen: false).Player2();
              //   },
              //   child: const Text(
              //     "insert two names",
              //     style: TextStyle(fontSize: 22),
              //   ),
              // ),