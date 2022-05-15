// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:results/util/emoticon_face.dart';
import 'package:results/util/exercises.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Greetings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Comment a little plan  here
                      // Hi Demari
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Demari',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '23 Jan',
                            style: TextStyle(
                                color: Colors.blue[100], fontSize: 20),
                          )
                        ],
                      ),
                      // Then notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25),

                  // Search Bar row
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),

                  // How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  // Emoticons
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '😡'),
                            SizedBox(height: 8),
                            Text('Bad', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '☹️'),
                            SizedBox(height: 8),
                            Text('Sad', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '😌'),
                            SizedBox(height: 8),
                            Text('Fine', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '😊'),
                            SizedBox(height: 8),
                            Text('Happy', style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            // That slide up bar
            SizedBox(height: 25),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(25.0),
                  color: Colors.white,
                  child: Center(
                    child: Column(children: [
                      // Exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Excercise',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      // List view of exercises
                      SizedBox(height: 25),
                      Expanded(
                        child: ListView(
                          children: [
                            Excercises(
                                skill: 'Speaking SKills',
                                description: '15 common practices',
                                icon: Icons.snowboarding),
                            Excercises(
                                skill: 'Another skill',
                                description: '15 random examples',
                                icon: Icons.access_time),
                            Excercises(
                                skill: 'And Another',
                                description: 'Lets do it again',
                                icon: Icons.airplane_ticket_sharp),
                          ],
                        ),
                      )
                    ]),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
