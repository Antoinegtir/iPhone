// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';

final List<Map<String, dynamic>> bottomApp = <Map<String, dynamic>>[
  {
    "name": "Kams",
    "iconAssets": "assets/icons/kams.jpg",
    "onPressed": () async {
      await launch("https://kams-art.com");
    },
  },
  {
    "name": "Threads",
    "iconAssets": "assets/icons/thread.png",
    "onPressed": () async {
      await launch("https://github.com/Antoinegtir/instagram-threads");
    },
  },
];
