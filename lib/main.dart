import 'package:flutter/material.dart';
import 'package:ringtoon_app/ringtones.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    ));

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RingTonesList()),
                );
              },
              child: const SizedBox(
                height: 250.0,
                child: Card(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage('icons/1.jpg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ringtones',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )
                      ],
                    )),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 150.0,
                    child: Card(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('icons/2.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'More Apps',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 150.0,
                    child: Card(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('icons/3.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Share',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        )),
                  ),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 150.0,
                    child: Card(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('icons/4.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Rate Us',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 150.0,
                    child: Card(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('icons/5.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Exit The App',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class RingTonesList extends StatelessWidget {
  const RingTonesList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Ringtone1()),
            );
          },
          child: SizedBox(
            height: 65,
            child: Card(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('numbers/1.jpg'),
                  ),
                  const Text(
                    'Ringtone_1',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: const Icon(Icons.share))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/2.jpg'),
                ),
                const Text(
                  'Ringtone_2',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/3.jpg'),
                ),
                const Text(
                  'Ringtone_3',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/4.jpg'),
                ),
                const Text(
                  'Ringtone_4',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/5.jpg'),
                ),
                const Text(
                  'Ringtone_5',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/6.jpg'),
                ),
                const Text(
                  'Ringtone_6',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/7.jpg'),
                ),
                const Text(
                  'Ringtone_7',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/8.jpg'),
                ),
                const Text(
                  'Ringtone_8',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/9.jpg'),
                ),
                const Text(
                  'Ringtone_9',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/10.jpg'),
                ),
                const Text(
                  'Ringtone_10',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/11.jpg'),
                ),
                const Text(
                  'Ringtone_11',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/12.jpg'),
                ),
                const Text(
                  'Ringtone_12',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/13.jpg'),
                ),
                const Text(
                  'Ringtone_13',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/14.jpg'),
                ),
                const Text(
                  'Ringtone_14',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/15.jpg'),
                ),
                const Text(
                  'Ringtone_15',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/16.jpg'),
                ),
                const Text(
                  'Ringtone_16',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/17.jpg'),
                ),
                const Text(
                  'Ringtone_17',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/18.jpg'),
                ),
                const Text(
                  'Ringtone_18',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/19.jpg'),
                ),
                const Text(
                  'Ringtone_19',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 65,
          child: Card(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('numbers/20.jpg'),
                ),
                const Text(
                  'Ringtone_20',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.share))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
