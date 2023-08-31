
import 'package:flutter/material.dart';
import 'package:project_flutter/home.dart';
import 'package:project_flutter/play.dart';

class MostPopular extends StatefulWidget {
  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Hello",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 148.0),
                      child: CircleAvatar(
                        foregroundImage: AssetImage("assets/image/play.png"),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.black,
                        radius: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Krupali Lunagariya",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 500,
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search your Song',
                              prefixIcon: Icon(Icons.search),
                            ),
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.only(left: 10),
                        //padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          color: Colors.grey,
                          child: Icon(
                            Icons.apps_outlined,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Upcomming",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 210.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset("assets/image/song1.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Soch Liya",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Arijit Singh",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset("assets/image/song2.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Kesariya Tera",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Arijit Singh",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset("assets/image/song1.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Soch Liya",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Arijit Singh",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset("assets/image/song2.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Kesariya Tera",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Arijit Singh",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset("assets/image/song1.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Soch Liya",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 210),
                          child: Text(
                            "Arijit Singh",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "Recently Play",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 11,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                  return Play();
                                },));
                              },
                              child: Image.asset(
                                "assets/image/play.png",
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          title: Text(
                            "Tum Kya Mile",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            "Arijit Singh",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Home();
                  },));
                },
                  child: Icon(
                Icons.home,
                color: Colors.red,
              )),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.album_sharp,
                color: Colors.white,
              ),
              label: 'location'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note_rounded,
                color: Colors.white,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              label: 'user'
                  ''),
        ],
      ),
    );
  }
}
