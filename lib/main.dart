// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'HowToPlay.dart';
import 'modes_page.dart';
import 'multi_player_normal.dart';
import 'name_provider.dart';
import 'single_modes_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return PlayerName();
        },
        child: ValueListenableBuilder<ThemeMode>(
            valueListenable: themeNotifier,
            builder: (_, ThemeMode currentMode, __) {
              return MaterialApp(
                // Remove the debug banner
                debugShowCheckedModeBanner: false,
                theme: ThemeData(primarySwatch: Colors.amber),
                darkTheme: ThemeData.dark(),
                themeMode: currentMode,
                home: HomeScreen(),
              );
              //     return HomeScreen();
            }));
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight:45,
          centerTitle: true,
          title: Text('Tic Tac Toeee'),
          actions: [
            IconButton(
                icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode),
                onPressed: () {
                  MyApp.themeNotifier.value =
                      MyApp.themeNotifier.value == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light;
                })
          ],
        ),
        body: Container(
          // Background ( Decoration ) Image
          height: 1000,
          width: 1000,
          decoration: const BoxDecoration(

              // color: Color.fromARGB(255, 0, 0, 0),
              image: DecorationImage(
            //   scale: 1.17 ,
            alignment: Alignment.topCenter,
            image: AssetImage("assets/game-1.gif"),
            fit: BoxFit.contain,
            //  opacity:10.0,
          )),

          child: SingleChildScrollView(
            child:
              Column(
                // settings icon button
                children: [
                  SizedBox(height: 30,),

                  //sized box for top of screen
                  // "Press to start"  TEXT
                  const SizedBox(height: 280),
                  const Text(
                    'Press to Start',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 194, 100, 100),
                      letterSpacing: 4.0,
                    ),
                  ),
                  // Play icon button
                  // sized box for how to play button
                  const SizedBox(height: 20),

                  /// how to play button
                  ///
                  IconButton(
                    iconSize: 60,
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ModesPage(),
                      ),
                    ),
                    icon: const Icon(Icons.play_arrow),
                    color: Color.fromARGB(255, 45, 197, 172),
                  ),
                  const SizedBox(height: 70),
                  Container(
                      height: 30,
                      width: 150,
                      child: ElevatedButton(
                        // ignore: prefer_const_constructors
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const HowToPlay()
                              // HowtoPlay(),

                              ),
                        ),
                        child: const Text(
                          'How to Play',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      )),
                ],
              ),
            
          ),
        ));
  }
}
