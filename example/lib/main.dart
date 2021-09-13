import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lbm_plugin/lbm_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    var platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      String Base_Url_For_App="crmapi.lbmsolutions.in";
      String Purchase_Code_envato="12345678";
      String Licence_Key_by_Admin="12345678912";


      platformVersion = await LbmPlugin.platformVersion(Base_Url_For_App,Purchase_Code_envato,Licence_Key_by_Admin);
      var data = json.decode(platformVersion.body);
      print(data['message']);
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }

}
