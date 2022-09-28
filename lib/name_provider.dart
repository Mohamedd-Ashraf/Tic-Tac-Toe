// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports

import 'package:flutter/cupertino.dart';

import 'multi_player_name_page.dart';

class PlayerName extends ChangeNotifier {
  String name = "";

  String Player1() {
    name = player1.text;
    notifyListeners();
    return name;
  }

  String Player2() {
    name = player2.text;
    notifyListeners();
    return name;
  }
}
