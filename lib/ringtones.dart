import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ringtone_set_mul/ringtone_set_mul.dart';
import 'package:audioplayers/audioplayers.dart';

class Ringtone1 extends StatefulWidget {
  @override
  _Ringtone1State createState() => _Ringtone1State();
}

class _Ringtone1State extends State<Ringtone1> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }
  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Builder(builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('1.mp3');
                    },
                    child: Text('child')),
                TextButton(
                  onPressed: () async {
                    if (await RingtoneSet.isWriteSettingsGranted()) {
                    } else {
                      RingtoneSet.reqSystemPermissions();
                    }
                    RingtoneSet.reqSystemPermissions();
                  },
                  child: const Text("Hey Multiple"),
                ),
                TextButton(
                  onPressed: () async {
                    bool success = false;
                    try {
                      success = await RingtoneSet.setRingtone("sounds/1.mp3");
                    } on PlatformException {
                      success = false;
                    }
                    var snackBar;
                    if (success) {
                      snackBar = const SnackBar(
                        content: Text("Ringtone set successfully!"),
                      );
                    } else {
                      snackBar = const SnackBar(content: Text("Error"));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Hey Ringtone"),
                ),
                TextButton(
                  onPressed: () async {
                    bool success = false;
                    try {
                      success = await RingtoneSet.setNotification(
                        "sounds/1.mp3",
                      );
                    } on PlatformException {
                      success = false;
                    }
                    var snackBar;
                    if (success) {
                      snackBar = const SnackBar(
                        content: Text("Notification set successfully!"),
                      );
                    } else {
                      snackBar = const SnackBar(content: Text("Error"));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Hey Notification"),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
