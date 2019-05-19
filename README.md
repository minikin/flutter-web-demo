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

## Features

- photos are fetched from a server
- infinity scrolling
- responsive to screen size changes including mobile device orientation changes
- powered by [build_value](https://pub.dev/packages/built_value) and [built_collection](https://pub.dev/packages/built_collection)
- background JSON parsing

## Requirements

- Flutter 1.5.4
- Dart 2.3.0+
- Xcode 10.0+
- Androind Studio 3.3.1+
- Ruby 2.4+
- CocoaPods 1.5.0+
- Flutter & Dart plugins:
  - [Visual Studio Code](https://flutter.dev/docs/get-started/editor?tab=androidstudio)
  - [Android Studio / IntelliJ](https://flutter.dev/docs/get-started/editor?tab=vscode)

## Develop

This project use `built_value` and `built_collection` as dependencies so before to start web server run:

```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```

To use webdev with hot-reload, run the following within your project directory:

```sh
webdev serve --auto restart
```

## Building with the production JavaScript compiler

To enable the release compiler, pass in the --release flag (or just -r).

```sh
webdev serve -r
```

If you'd like to generate output to disk, we recommend you use webdev.

```sh
webdev build
```

This will create a build directory with index.html, main.dart.js and the rest of the files needed to run
the application using a static HTTP server.

## FAQ

Read more about [Flutter for web](https://github.com/flutter/flutter_web)

If you have any questions ping me on twitter: [@minikin](https://twitter.com/minikin)
