import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'My List/Mylist.dart';
import 'Netflix Original/NetflixOrigin.dart';
import 'New Releases/NewRelease.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/banner.webp"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                        height: 500,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.black.withOpacity(0.85),
                              Colors.black.withOpacity(0.0),
                            ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter))),
                    Container(
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/title_img.webp",
                            width: 300,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Excting - Sci-Fi Drama - Sci-Fi Adventure",
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 35),
                              child: Image.asset(
                                "assets/images/logo.ico",
                                width: 45,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 50, 20, 10),
                              child: Row(
                                children: [
                                  Icon(Icons.search_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                      icon: Image.asset(
                                        "assets/images/profile_1.jpeg",
                                        fit: BoxFit.cover,
                                        width: 26,
                                        height: 26,
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "TV Shows",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Movies",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.add,
                          size: 25,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "My List",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 13, left: 8, top: 2, bottom: 2),
                          child: Row(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Play",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.info_outline,
                          size: 25,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Info",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "New Releases",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   height: 8,
                // ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return NewReleases();
                      }),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "My List",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   height: 8,
                // ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return MyList();
                      }),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "NetFlix Original",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   height: 8,
                // ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return NetflixOriginal();
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
