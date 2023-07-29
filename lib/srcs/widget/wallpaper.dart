import 'package:flutter/material.dart';

class WallPaperWidget extends StatefulWidget {
  const WallPaperWidget({required this.wallpaperUrl, super.key});
  final String wallpaperUrl;
  @override
  State<WallPaperWidget> createState() => _WallPaperWidgetState();
}

class _WallPaperWidgetState extends State<WallPaperWidget> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
        child: Container(
            height: 612,
            width: 282,
            color: Colors.white,
            child: Image.asset(
              widget.wallpaperUrl,
              fit: BoxFit.cover,
            )));
  }
}
