import 'package:flutter/material.dart';
import 'package:iphone/srcs/widget/app.dart';

class HomeView extends StatefulWidget {
  const HomeView({required this.applications, super.key});
  final dynamic applications;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 6),
          padding: const EdgeInsets.symmetric(horizontal: 2),
          addAutomaticKeepAlives: true,
          itemBuilder: (context, index) {
            final app = widget.applications[index];
            final String appName = app["name"];
            final String appiconAssets = app["iconAssets"];
            final Function()? appRoute = app["onPressed"];
            return AppWidget(
              isName: true,
              iconAssets: appiconAssets,
              name: appName,
              onPressed: appRoute,
            );
          },
          itemCount: widget.applications.length,
        ));
  }
}
