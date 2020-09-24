import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Demo_file extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _demo_file();
  }

}

class _demo_file  extends State<Demo_file>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('gfjdgsjdsd'),),
      body: Column(
        children: [
          Text('HEllo Flutter')
        ],
      ),
    );
  }
}