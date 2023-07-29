import 'package:flutter/material.dart';
import 'package:iphone/srcs/view/home.page.dart';
import 'package:iphone/srcs/widget/battery.dart';
import 'package:iphone/srcs/widget/navbar.dart';
import 'package:iphone/srcs/widget/timer.dart';
import 'package:iphone/srcs/widget/wallpaper.dart';

class ColorIPhone {
  static const String purple = "assets/colors/purple.png";
  static const String yellow = "assets/colors/yellow.png";
  static const String dark = "assets/colors/dark.png";
}

class IPhone extends StatefulWidget {
  const IPhone(
      {super.key,
      required this.iphoneColor,
      required this.wallpaper,
      required this.applications,
      required this.bottomApplications});

  final String iphoneColor;
  final String wallpaper;
  final List<Map<String, dynamic>> applications;
  final List<Map<String, dynamic>> bottomApplications;
  @override
  State<IPhone> createState() => _MyIPhoneState();
}

class _MyIPhoneState extends State<IPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                    height: 611,
                    width: 282,
                    color: Colors.transparent,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        WallPaperWidget(wallpaperUrl: widget.wallpaper),
                        HomeView(applications: widget.applications),
                        const BatteryWidget(),
                        const TimerWidget(),
                        NavBarWidget(
                          applications: widget.bottomApplications,
                        )
                      ],
                    ))),
            IgnorePointer(
                child: Image.asset(
              widget.iphoneColor,
              package: "iphone",
            )),
          ],
        )));
  }
}
