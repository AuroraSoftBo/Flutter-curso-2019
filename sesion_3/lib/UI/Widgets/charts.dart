import 'package:flutter/material.dart';

class GeneralChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      color: Colors.white,
      child: Center(child: Text('Chart General'),),
    );
  }
}