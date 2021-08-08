<h1 align="center">
  <a href="https://github.com/minikin/flutter-web-demo">
   Flutter Web App Demo
  </a>
</h1>

<p align="center">
  Responsive web app powered by Flutter and Dart.
</p>

<p align="center">
  <a href="https://github.com/minikin/flutter-web-demo/blob/master/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="Flutter Web App Demo is released under the MIT license." />
  </a>
  <a href="https://github.com/minikin/flutter-web-demo/actions">
    <img src="https://github.com/minikin/flutter-web-demo/workflows/CI/badge.svg" alt="Current Build Status." />
  </a>
  <a href="https://github.com/minikin/flutter-web-demo/blob/master/CONTRIBUTING.md">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs welcome!" />
  </a>
</p>

<p align="center">
  <a href="http://minikin.me/flutter-web-demo">
    <img src="https://github.com/minikin/flutter-web-demo/blob/master/assets/flutter_wep_app.gif?raw=true" alt="Flutter Web App Demo is released under the MIT license." />
  </a>
</p>

## Contents

- [Features](#-features)
- [Requirements](#-requirements)
- [Develop](#-develop)
- [Building with the production JavaScript compiler](#-building-with-the-production-javaScript-compiler)
- [Support](#-support)
- [License](#-license)

## 📋 Features

- photos fetched from a [remote free server](https://picsum.photos/)
- infinity scrolling
- responsive to screen size changes including mobile device orientation changes
- powered by [build_value](https://pub.dev/packages/built_value) and [built_collection](https://pub.dev/packages/built_collection)
- background JSON parsing

## ⚙️ Requirements

- Flutter: the latest version on `flutter beta channel`
- Dart: 2.9.0+
- Xcode: 11.5.0+
- Androind Studio 4.0.0+
- Ruby: 2.6.0+
- CocoaPods: 1.8.4+
- Flutter & Dart plugins:
  - [Visual Studio Code](https://flutter.dev/docs/get-started/editor?tab=androidstudio)
  - [Android Studio / IntelliJ](https://flutter.dev/docs/get-started/editor?tab=vscode)

## 🎉 Develop

Run you app in Chrome

```sh
flutter run -d chrome
```

To hot restart (and rebuild state), press "R".

## 👷‍ Building with the production JavaScript compiler

To enable the release compiler, run.

```sh
flutter build web && cp -R build/web docs
```

This will create a `build/web` directory with index.html, main.dart.js and the rest of the files needed to run
the application using a static HTTP server.

## 🤷 Support

Post issues and feature requests on the GitHub [issue tracker](https://github.com/minikin/flutter-web-demo/issues).

## 📄 License

Flutter Web App Demo is available under the MIT license.
See the [LICENSE](https://github.com/minikin/flutter-web-demo/blob/master/LICENSE) file for more info.
