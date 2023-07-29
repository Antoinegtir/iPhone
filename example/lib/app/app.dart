// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';

final List<Map<String, dynamic>> app = <Map<String, dynamic>>[
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
  {
    "name": "BeReal",
    "iconAssets": "assets/icons/rebeal.png",
    "onPressed": () async {
      await launch("https://github.com/Antoinegtir/bereal-clone");
    },
  },
  {
    "name": "Intra",
    "iconAssets": "assets/icons/epitech.png",
    "onPressed": () async {
      await launch("https://github.com/Antoinegtir/intranet");
    },
  },
  {
    "name": "Safari",
    "iconAssets": "assets/icons/safari.png",
    "onPressed": () async {
      await launch("https://github.com/Antoinegtir/safari-clone");
    },
  },
  {
    "name": "Connectify",
    "iconAssets": "assets/icons/connectify.png",
    "onPressed": () async {
      await launch("https://github.com/Antoinegtir/connectify");
    },
  },
  {
    "name": "ParallelAI",
    "iconAssets": "assets/icons/parallel.jpg",
    "onPressed": () async {
      await launch("https://github.com/Antoinegtir/parallel-ai");
    },
  },
  {
    "name": "Oros",
    "iconAssets": "assets/icons/oros.png",
    "onPressed": () async {
      await launch("https://github.com/Antoinegtir/oros");
    },
  },
  {
    "name": "Météo",
    "iconAssets": "assets/icons/meteo.jpg",
    "onPressed": () async {
      await launch("https://github.com/Antoinegtir/weather");
    },
  }
];
