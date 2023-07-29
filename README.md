# iPhone
<a href="http://antoine-gonthier.web.app"><img src="https://firebasestorage.googleapis.com/v0/b/antoine-gonthier.appspot.com/o/iphone-min.png?alt=media&token=f94ca61f-e34e-4359-a4fd-9591d18b86ed"></img></a>

The `iphone` package allow you to display an iphone really easily for your website UI and showcase your application, wallpaper really easy!

## Features

- Displayn iPhone on web for portfolio
- Choose color of iPhone
- Choose the application you wanna display

#### Installation

Click here: <a href="https://pub.dev/packages/iphone">Pub dev</a>

Add the following dependency to your pubspec.yaml file:

```
dependencies:
    iphone: ^0.0.1
```

Then, run `flutter pub get` to fetch the package.

## Usage

- import the iphone package: ```import 'package:iphone/iphone.dart';```


#### iPhone Color
3 colors are currently implemented for the iPhone 14: dark, purple, yellow

```
iphoneColor: ColorIPhone.dark,
```

#### iPhone Wallpaper
stock in `assets` folder your wallpaper image and dipslay it on your iphone easily
```
wallpaper: "assets/wallpaper.jpg",
```

#### iPhone Apps
you can easily display your application on your iphone using a kind of json format where you can place the name of the app, the path of the logo stock in `assets` folder
```
applications: [
    {
        "name": "Instagram",
        "iconAssets": "assets/icons/instagram.jpg",
        "onPressed": () {
            // do something like a true onPressed such as route to other page...
        },
        },
    {
        "name": "Facebook",
        "iconAssets": "assets/icons/facebook.png",
        "onPressed": () async {
            // do something like a true onPressed such as route to other page...
        },
    }
]
```

#### iPhone Bottom Apps
Same things as basic Apps but display max 4 apps, those are the most important !
```
bottomApplications: [
    {
        "name": "Safari",
        "iconAssets": "assets/icons/safari.jpg",
        "onPressed": () {
            // do something like a true onPressed such as route to other page...
        },
        },
    {
        "name": "AppStore",
        "iconAssets": "assets/icons/appstore.png",
        "onPressed": () async {
            // do something like a true onPressed such as route to other page...
        },
    }
]
```


The project is only at the beginning, there are still a lot of type of phone to add only iPhone 14 are implemented ❤️