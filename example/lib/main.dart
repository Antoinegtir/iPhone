// ignore_for_file: deprecated_member_use

import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:example/app/app.dart';
import 'package:example/app/bottomApp.dart';
import 'package:example/widget/copyright.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:example/view/about.page.dart';
import 'package:example/view/blog.page.dart';
import 'package:example/view/contact.page.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:iphone/iphone.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iPhone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/blog': (context) => const BlogPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  static const String route = "/";
}

class _HomePageState extends State<HomePage> {
  double rate = 1;
  bool blog = false;
  bool contact = false;
  bool about = false;
  int current = 0;

  @override
  void initState() {
    super.initState();
  }

  Widget _buttonAppBar(bool action, String text, String route) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/$route");
        },
        child: MouseRegion(
            onEnter: (event) {
              setState(() {
                action = true;
              });
            },
            onExit: (event) {
              setState(() {
                action = false;
              });
            },
            child: Text(
              "$text",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: rate < 0.20
                      ? !about
                          ? Colors.black
                          : Colors.blue[700]
                      : !about
                          ? Colors.white
                          : Colors.blue[700]),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(
                      color: Colors.transparent,
                      child: rate >= 0.80
                          ? Container(
                              height: 80,
                            )
                          : FadeInUp(
                              child: SizedBox(
                                  height: 80,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, "/about");
                                            },
                                            child: MouseRegion(
                                                onEnter: (event) {
                                                  setState(() {
                                                    about = true;
                                                  });
                                                },
                                                onExit: (event) {
                                                  setState(() {
                                                    about = false;
                                                  });
                                                },
                                                child: Text(
                                                  "About",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: rate < 0.20
                                                          ? !about
                                                              ? Colors.black
                                                              : Colors.blue[700]
                                                          : !about
                                                              ? Colors.white
                                                              : Colors
                                                                  .blue[700]),
                                                ))),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, "/blog");
                                            },
                                            child: MouseRegion(
                                                onEnter: (event) {
                                                  setState(() {
                                                    blog = true;
                                                  });
                                                },
                                                onExit: (event) {
                                                  setState(() {
                                                    blog = false;
                                                  });
                                                },
                                                child: Text(
                                                  "  Blog",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: rate < 0.20
                                                          ? !blog
                                                              ? Colors.black
                                                              : Colors.blue[700]
                                                          : !blog
                                                              ? Colors.white
                                                              : Colors
                                                                  .blue[700]),
                                                ))),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, "/contact");
                                            },
                                            child: MouseRegion(
                                                onEnter: (event) {
                                                  setState(() {
                                                    contact = true;
                                                  });
                                                },
                                                onExit: (event) {
                                                  setState(() {
                                                    contact = false;
                                                  });
                                                },
                                                child: Text(
                                                  "Contact",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: rate < 0.20
                                                          ? !contact
                                                              ? Colors.black
                                                              : Colors.blue[700]
                                                          : !contact
                                                              ? Colors.white
                                                              : Colors
                                                                  .blue[700]),
                                                ))),
                                      ])),
                            )))),
        ),
        body: NotificationListener(
            onNotification: (v) {
              if (v is ScrollUpdateNotification) {
                setState(() {
                  rate -= v.scrollDelta! / 1000;
                });
              }
              return true;
            },
            child: ListView(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height / 1.1,
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Column(
                          children: [
                            Text(
                              "@Antoine.gtir",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 9,
                                  fontWeight: FontWeight.w800),
                            ),
                            Container(
                              height: 10,
                            ),
                            Text(
                              "Hi, my name is Antoine Gonthier, 18 years old & Flutter lover",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 39,
                                  fontWeight: FontWeight.w800),
                            ),
                            Container(
                              height: 50,
                            ),
                            Transform.translate(
                                offset: Offset(0, rate * 100),
                                child: Transform.rotate(
                                    angle: rate > 0.94
                                        ? 0.94 * 10
                                        : rate < 0.629
                                            ? 0.629 * 10
                                            : rate * 10,
                                    child: const Icon(
                                      CupertinoIcons.down_arrow,
                                      color: Colors.white,
                                      size: 200,
                                    ))),
                          ],
                        ))),
                Container(
                    color: const Color.fromARGB(255, 12, 23, 43),
                    height: MediaQuery.of(context).size.height,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              "assets/desktop.jpg",
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 1 / rate * 3, sigmaY: 1 / rate * 3),
                                child: Container(
                                  color: Colors.transparent,
                                ))),
                        Transform.scale(
                            scale:
                                (rate <= 0.50 ? 0.5 * 2.2 : rate * 2.2) * 0.9,
                            child: IPhone(
                                iphoneColor: ColorIPhone.dark,
                                wallpaper: "assets/wallpaper.jpg",
                                applications: app,
                                bottomApplications: bottomApp)),
                      ],
                    )),
                Copyright()
              ],
            )));
  }
}
