import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iphone/srcs/widget/appbottom.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({required this.applications, super.key});
  final dynamic applications;
  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  double app = 0;
  @override
  Widget build(BuildContext context) {
    setState(() {
      app = widget.applications.length;
    });
    if (app > 4) throw ("Error max application should be 4");
    if (app < 0) throw ("Application could not have a negatif number");
    return Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    height: 15,
                    color: Colors.transparent,
                    width: 60,
                    alignment: Alignment.center,
                    child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 3,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 2),
                                child: Icon(
                                  Icons.search,
                                  size: 10,
                                  color: Color.fromARGB(159, 238, 252, 255),
                                )),
                            Container(
                              width: 2,
                            ),
                            const Text(
                              "Search",
                              style: TextStyle(
                                  color: Color.fromARGB(159, 238, 252, 255),
                                  fontSize: 9),
                            ),
                            Container(
                              width: 5,
                            ),
                          ],
                        )))),
            Container(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: Container(
                        color: const Color.fromARGB(0, 255, 255, 255),
                        width: 268,
                        height: 69,
                        alignment: Alignment.center,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 67 * app,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    final app = widget.applications[index];
                                    final String appName = app["name"];
                                    final String appiconAssets =
                                        app["iconAssets"];
                                    final Function()? appRoute =
                                        app["onPressed"];
                                    return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: BottomAppWidget(
                                          isName: false,
                                          name: appName,
                                          iconAssets: appiconAssets,
                                          onPressed: appRoute,
                                        ));
                                  },
                                  itemCount: app as int,
                                ),
                              )
                            ])),
                  )),
            )
          ],
        ));
  }
}
