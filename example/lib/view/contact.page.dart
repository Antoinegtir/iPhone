import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
  static const String route = "/contact";
}

class _ContactPageState extends State<ContactPage> {
  bool medium = false;
  bool instagram = false;
  bool github = false;
  bool linkedin = false;
  bool mail = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            title: const Text(
              "Contact",
              style: TextStyle(color: Colors.white),
            )),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 100,
                  ),
                  GestureDetector(
                      onTap: () async {
                        await launch("https://medium.com/@zkhwctb/`");
                      },
                      child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              medium = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              medium = false;
                            });
                          },
                          child: Icon(
                            FontAwesomeIcons.medium,
                            color: medium ? Colors.grey : Colors.white,
                            size: 100,
                          ))),
                  GestureDetector(
                      onTap: () async {
                        await launch(
                            "https://www.instagram.com/antoine.gtier/");
                      },
                      child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              instagram = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              instagram = false;
                            });
                          },
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: instagram ? Colors.grey : Colors.white,
                            size: 100,
                          ))),
                  GestureDetector(
                      onTap: () async {
                        await launch("https://github.com/Antoinegtir");
                      },
                      child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              github = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              github = false;
                            });
                          },
                          child: Icon(
                            FontAwesomeIcons.github,
                            color: github ? Colors.grey : Colors.white,
                            size: 100,
                          ))),
                  GestureDetector(
                      onTap: () async {
                        await launch("https://www.linkedin.com/in/antoinegtr/");
                      },
                      child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              linkedin = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              linkedin = false;
                            });
                          },
                          child: Icon(
                            FontAwesomeIcons.linkedin,
                            color: linkedin ? Colors.grey : Colors.white,
                            size: 100,
                          ))),
                  GestureDetector(
                      onTap: () async {
                        await launch("mailto:antoinegonthier11@icloud.com");
                      },
                      child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              mail = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              mail = false;
                            });
                          },
                          child: Icon(
                            Icons.mail,
                            color: mail ? Colors.grey : Colors.white,
                            size: 130,
                          ))),
                  const SizedBox(
                    width: 100,
                  ),
                ],
              ),
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
