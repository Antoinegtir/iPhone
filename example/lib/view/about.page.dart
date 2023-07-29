import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
  static const String route = "/about";
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "About",
              style: TextStyle(color: Colors.white),
            )),
        backgroundColor: Colors.black,
        body: NestedScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  elevation: 0,
                  stretch: true,
                  toolbarHeight: 80,
                  leading: const SizedBox.shrink(),
                  backgroundColor: Colors.transparent,
                  expandedHeight: MediaQuery.of(context).size.height / 2,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    stretchModes: const <StretchMode>[
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                      StretchMode.fadeTitle,
                    ],
                    centerTitle: true,
                    expandedTitleScale: 3,
                    title: FadeIn(
                        duration: const Duration(seconds: 2),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 2),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              shape: BoxShape.circle),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                "assets/pp.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Antoine Gonthier",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.96,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              child: Text(
                                "Hey there, welcome to my portfolio, my name is Antoine Gonthier, 18 years old, Epitech Student & Full-stack Flutter developer. I am passionate about developping cool graphical interface on application that i develop. I love developping server in order to create link between people innovate, learn new technologies.",
                                style: TextStyle(
                                  overflow: TextOverflow.visible,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.96,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ))),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        color: Colors.white,
                        height: 0.1,
                        width: MediaQuery.of(context).size.width,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20),
              child: ListView(
                addAutomaticKeepAlives: true,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "📚 Education",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Center(
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Text(
                            "\n - 3 years of autodidact learn of mobile development\n - 1 year at programming college at Epitech Nantes, title aimed: BAC +5, Expert in Technology & Information",
                            style: TextStyle(
                              overflow: TextOverflow.visible,
                              fontSize: 25,
                              letterSpacing: 0.96,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ))),
                  Container(
                    height: 50,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "🎨 Skills\n",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                  Column(
                    children: [
                      Image.asset("assets/code.png"),
                      Container(
                        height: 10,
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
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
                                  fontSize:
                                      MediaQuery.of(context).size.width / 90,
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
              ),
            )));
  }
}
