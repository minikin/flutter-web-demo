# Flutter Web App Demo

[![Codemagic build status](https://api.codemagic.io/apps/5cdb3c1ed85907001941f21e/5cdb3c1ed85907001941f21d/status_badge.svg)](https://codemagic.io/apps/5cdb3c1ed85907001941f21e/5cdb3c1ed85907001941f21d/latest_build)

Experimental responsive web app powered by Flutter and Dart.

[![flutter-web-demo](https://github.com/minikin/flutter-web-demo/blob/master/assets/flutter_wep_app.gif?raw=true)](http://minikin.me/flutter-web-demo)

- [Flutter Web App Demo](#flutter-web-app-demo)
  - [Features](#features)
  - [Requirements](#requirements)
  - [Develop](#develop)
  - [Building with the production JavaScript compiler](#building-with-the-production-javaScript-compiler)
  - [FAQ](#faq)
  - [Troubleshooting](#troubleshooting)

## Features

- photos are fetched from a server
- infinity scrolling
- responsive to screen size changes including mobile device orientation changes
- powered by [build_value](https://pub.dev/packages/built_value) and [built_collection](https://pub.dev/packages/built_collection)
- background JSON parsing

## Requirements

- Flutter: the latest version on `flutter dev channel`
- Dart: 2.5.0+
- Xcode: 10.0+
- Androind Studio 3.3.1+
- Ruby: 2.4+
- CocoaPods: 1.7.0+
- Flutter & Dart plugins:
  - [Visual Studio Code](https://flutter.dev/docs/get-started/editor?tab=androidstudio)
  - [Android Studio / IntelliJ](https://flutter.dev/docs/get-started/editor?tab=vscode)

## Develop

Activate `webdev` package

```sh
flutter config --enable-web
```

Run you app in Chrome

```sh
flutter run -d chrome
```

To hot restart (and rebuild state), press "R".


## Building with the production JavaScript compiler

To enable the release compiler, run.

```sh
flutter build web
```

This will create a `build/web` directory with index.html, main.dart.js and the rest of the files needed to run
the application using a static HTTP server.

## FAQ

Read more about [Flutter for web](https://github.com/flutter/flutter_web)

If you have any questions ping me on twitter: [@minikin](https://twitter.com/minikin)

## Troubleshooting

### 1

In case of some errors try to run:

```sh
flutter clean
```

### 2

If you catch an error like this:

```sh
flutter packages pub global run webdev serve -r
webdev could not run for this project.
Could not find a file named "pubspec.yaml" in "/Users/JohnDoe/flutter/.pub-cache/hosted/pub.dartlang.org/built_value-6.7.1".
pub finished with exit code 78
```

try to run:

```sh
pub cache repair
```

### 3

This project use `built_value` and `built_collection` as dependencies so you might need to run command below before to start a web server:

```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```
