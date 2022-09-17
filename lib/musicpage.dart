// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:neumorphism/new_box.dart';

class MusicPage extends StatefulWidget {
  MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: NewBox(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text(
                      'P L A Y L I S T',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      // ignore: prefer_const_constructors
                      child: NewBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  child: NewBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/music.jpg',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kota The Friend',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[700]),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            )
                          ],
                        ),
                        Text(
                          'Birdie',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('0.00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4.22'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                NewBox(
                    child: LinearProgressIndicator(
                  value: 0.9,
                  color: Colors.red,
                  backgroundColor: Colors.grey[300],
                  minHeight: 7,
                )),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 70,
                        width: 90,
                        child: NewBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 30,
                          ),
                        )),
                    SizedBox(
                        height: 70,
                        width: 110,
                        child: NewBox(
                            child: Icon(
                          Icons.play_arrow,
                          size: 30,
                        ))),
                    SizedBox(
                        height: 70,
                        width: 90,
                        child: NewBox(
                            child: Icon(
                          Icons.skip_next,
                          size: 30,
                        )))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
