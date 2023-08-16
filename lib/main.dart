import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                            builder: (context) => const RingTonesList()));
                  },
                  child: Container(
                    height: 300.0,
                    child: const Card(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: const Card(
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
                      child: Container(
                        height: 150.0,
                        child: const Card(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: const Card(
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
                      child: Container(
                        height: 150.0,
                        child: const Card(
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
        ),
      ),
    );
  }
}

class RingTonesList extends StatelessWidget {
  const RingTonesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(children: [
          GestureDetector(
            onTap: () {
              // This function will be called when the user clicks on the image.
              // It will navigate to the new page.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainApp(),
                ),
              );
            },
            child: Container(
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
          Container(
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
          Container(
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
          Container(
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
        ]),
      ),
    );
  }
}
