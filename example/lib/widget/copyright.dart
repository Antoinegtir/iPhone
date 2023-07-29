import 'package:flutter/material.dart';

class Copyright extends StatefulWidget {
  const Copyright({super.key});

  @override
  State<Copyright> createState() => _CopyrightState();
}

class _CopyrightState extends State<Copyright> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
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
        ));
  }
}
