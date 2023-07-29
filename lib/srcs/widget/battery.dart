import 'package:flutter/material.dart';

class BatteryWidget extends StatefulWidget {
  const BatteryWidget({super.key});

  @override
  State<BatteryWidget> createState() => _BatteryWidgetState();
}

class _BatteryWidgetState extends State<BatteryWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: const EdgeInsets.only(right: 17, top: 15),
            child: Image.asset(
              "assets/battery.png",
              height: 12,
              package: "iphone",
            )));
  }
}
