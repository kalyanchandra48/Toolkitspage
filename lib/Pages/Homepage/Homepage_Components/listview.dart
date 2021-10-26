import 'package:flutter/material.dart';

class Searchfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 327,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color(0xffF2F2F2),
      ),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.close, color: Colors.black),
          prefixIcon: Icon(Icons.search, color: Colors.black),
          hintText: 'Search Tools',
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
