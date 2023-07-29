import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
  static const String route = "/blog";
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      color: Colors.transparent,
                    ))),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            title: const Text(
              "Blog",
              style: TextStyle(color: Colors.white),
            )),
        body: ListView(
          children: [
            GestureDetector(
                onTap: () async {
                  await launch(
                      "https://medium.com/@zkhwctb/weather-app-for-flutter-starter-1b61010cdfe");
                },
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 40, right: MediaQuery.of(context).size.width / 3),
                    child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xff0a0a0a),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Weather App for Flutter Starter",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Through this article you will learn to developp your first mobile application, build their graphical interface, undertand what is an API…",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Published on Jul 21 . 6 min read",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ))))),
            Container(
              height: 50,
            ),
            GestureDetector(
                onTap: () async {
                  await launch(
                      "https://medium.com/@zkhwctb/how-i-create-a-clone-of-bereal-7dbee8a915d5");
                },
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 40, right: MediaQuery.of(context).size.width / 3),
                    child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xff0a0a0a),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "How I Create a Clone of BeReal",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Through this article i am gonna teach you how i create a fully functionnal clone of BeReal application using Flutter & Firebase.",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Published on Jul 21 · 4 min read",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ))))),
            Container(
              height: 50,
            ),
            GestureDetector(
                onTap: () async {
                  await launch(
                      "https://medium.com/@zkhwctb/how-i-created-an-open-source-threads-clone-with-flutter-bddc7b6ebc55");
                },
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 40, right: MediaQuery.of(context).size.width / 3),
                    child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: const Color(0xff0a0a0a),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "How I created an open-source Threads clone with Flutter",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Through this article i am gonna teach you how i create a clone of Threads application using Flutter & Firebase.",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Published on Jul 19 · 2 min read",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ))))),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Copyright © 2023 by Antoine Gonthier. All rights reserved.',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width / 90,
                          ),
                        )),
                    Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                  ],
                ))
          ],
        ));
  }
}
