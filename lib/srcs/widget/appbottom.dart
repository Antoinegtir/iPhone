import 'package:flutter/material.dart';

class BottomAppWidget extends StatefulWidget {
  const BottomAppWidget(
      {required this.iconAssets,
      required this.name,
      required this.isName,
      required this.onPressed,
      super.key});
  final bool isName;
  final String name;
  final String iconAssets;
  final Function()? onPressed;
  @override
  State<BottomAppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<BottomAppWidget> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
            onEnter: (event) {
              setState(() {
                isSelect = true;
              });
            },
            onExit: (event) {
              setState(() {
                isSelect = false;
              });
            },
            child: GestureDetector(
              onTap: widget.onPressed,
              onLongPress: () {
                setState(() {
                  setState(() {
                    isSelect = true;
                  });
                });
              },
              onLongPressEnd: (o) {
                setState(() {
                  isSelect = false;
                });
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      height: 47,
                      width: 47,
                      widget.iconAssets,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 47,
                      width: 47,
                      color: isSelect
                          ? const Color.fromARGB(76, 158, 158, 158)
                          : Colors.transparent,
                    ),
                  ])),
            )),
        !widget.isName
            ? const SizedBox.shrink()
            : Container(
                height: 5,
              ),
        !widget.isName
            ? const SizedBox.shrink()
            : Text(
                widget.name,
                style: const TextStyle(
                  fontSize: 9,
                  fontFamily: "arial",
                  color: Colors.white,
                ),
              ),
      ],
    );
  }
}
