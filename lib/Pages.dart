// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages, camel_case_types, unused_import, implementation_imports

import 'package:flutter/material.dart';

class Pages extends StatelessWidget
{
  const Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "Illustration",
          style: TextStyle(),
          
        ),toolbarHeight:45,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/200.gif",width: 200,height: 200,),
              Image.asset("assets/tic-tac-toe.gif",width: 200,height: 200,),
              Image.asset("assets/Draw.gif",width: 200,height: 200,)
            ],
          ),
        ) ,
      ),
    );
    throw UnimplementedError();
  }

}