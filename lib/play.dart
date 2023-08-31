import 'dart:html';


import 'package:flutter/material.dart';
import 'package:project_flutter/mostpopular.dart';

class Play extends StatefulWidget {
  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  bool playing = false;
  IconData playbtn = Icons.play_arrow;
  int valueHolder = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Expanded(
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return MostPopular();
                    },));
                  },
                  child: Icon(Icons.arrow_back_ios_new),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                child: Center(child: Text("Now Playing")),
              ),
              flex: 10,
            ),
            Expanded(
              child: Container(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                              image: AssetImage("assets/image/play.png"))),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Tum Kya Mile",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Arijit Singh",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("00.00",style: TextStyle(color: Colors.white),),
                        ),
                        Container(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Slider(
                                value: valueHolder.toDouble(),
                                min: 1,
                                max: 100,
                                divisions: 50,
                                activeColor: Colors.pink,
                                inactiveColor: Colors.grey,
                                label: '${valueHolder.round()}',
                                onChanged: (double newValue) {
                                  setState(() {
                                    valueHolder = newValue.round();
                                  });
                                },
                                semanticFormatterCallback: (double newValue) {
                                  return '${newValue.round()}';
                                }),
                          ),
                        ),
                        Text("05.30",style: TextStyle(color: Colors.white),),
                      ],
                    ),

                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 45,
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        iconSize: 80,
                        onPressed: () {
                          if (!playing) {
                            setState(() {
                              playbtn = Icons.pause_circle;
                              playing = true;
                            });
                          } else {
                            setState(() {
                              playbtn = Icons.play_arrow;
                              playing = false;
                            });
                          }
                        },
                        icon: Icon(
                          playbtn,
                          color: Colors.pink,
                        ),
                      ),
                      IconButton(
                        iconSize: 45,
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_next,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),

            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.arrow_downward,color: Colors.white,),label: 'location'),
          BottomNavigationBarItem(icon: Icon(Icons.share,color: Colors.white,), label: 'location'),
          BottomNavigationBarItem(icon: Icon(Icons.music_note_sharp,color: Colors.pink,), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.volume_up_sharp,color: Colors.white,), label: 'user'),
        ],
      ),

    );
  }
}
