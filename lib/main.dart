import 'package:flutter/material.dart';
import 'Pages/Homepage/Homepage_Components/listview.dart';
import 'Pages/Homepage/Homepage_Components/tools.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: design9(),
    ),
  );
}

class design9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        leadingWidth: 220,
        leading: Padding(
          padding: EdgeInsets.only(left: 25, top: 20),
          child: Text(
            'ToolKit',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          SizedBox(
            height: 15,
          ),
          Searchfield(),
          SizedBox(
            height: 15,
          ),
          Tools(),
        ],
      ),
    );
  }
}
