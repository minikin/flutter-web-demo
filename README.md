[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine)

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
  <a href="https://github.com/minikin/flutter-web-demo/actions/workflows/ci.yml">
    <img src="https://github.com/minikin/flutter-web-demo/actions/workflows/ci.yml/badge.svg" alt="Current Build Status." />
  </a>
  <a href="https://github.com/minikin/flutter-web-demo/blob/master/CONTRIBUTING.md">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs welcome!" />
  </a>
</p>

## Contents

- [Contents](#contents)
- [📋 Features](#-features)
- [⚙️ Requirements](#️-requirements)
- [🎉 Develop](#-develop)
- [👷‍ Building with the production JavaScript compiler](#-building-with-the-production-javascript-compiler)
- [🤷 Support](#-support)
- [📄 License](#-license)

## 📋 Features

- photos fetched from a [remote free server](https://picsum.photos/)
- infinity scrolling
- responsive to screen size changes including mobile device orientation changes
- powered by [build_value](https://pub.dev/packages/built_value) and [built_collection](https://pub.dev/packages/built_collection)
- background JSON parsing

## ⚙️ Requirements

- Flutter: 3.0.1+
- Dart: 2.17.0+
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
flutter build web && cp -R build/web/ docs
```

This will create a `build/web` directory with index.html, main.dart.js and the rest of the files needed to run
the application using a static HTTP server.

## 🤷 Support

Post issues and feature requests on the GitHub [issue tracker](https://github.com/minikin/flutter-web-demo/issues).

## 📄 License

Flutter Web App Demo is available under the MIT license.
See the [LICENSE](https://github.com/minikin/flutter-web-demo/blob/master/LICENSE) file for more info.
