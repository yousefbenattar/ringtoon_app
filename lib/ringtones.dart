import 'package:flutter/material.dart';
import 'package:ringtone_set/ringtone_set.dart';

class RingTones1 extends StatelessWidget {
  const RingTones1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('images/1.jpg'),
              const SizedBox(height: 33),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        RingtoneSet.setRingtone("sounds/1.mp3");
                      },
                      child: const Text('Set As Ringtone')),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text('Set As Notification')),
                ],
              ),
              const SizedBox(height: 33),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text('As Alarm')),
                  ElevatedButton(onPressed: () {}, child: const Text('Play')),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
