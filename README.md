# Flutter Firebase Authentication Riverpod

Updated version of this demo project: [Flutter Firebase Authentication Riverpod](https://github.com/2002Bishwajeet/authentication_riverpod/tree/master)
This Project demonstrates how to run a full flutter dev envrionment in a devcontainer in VS-Code
This repo contains a sample Flutter application that demonstrates the use of Firebase authentication to a Flutter app using Riverpod as a State management solution
[Refer to my Medium Blog for detailed explanation](https://bishwajeet-techmaster.medium.com/firebase-authentication-using-flutter-and-riverpod-f302ab749383)

## TechStack Used

<a href="https://dart.dev" target="_blank"> <img src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg" alt="dart" width="40" height="40"/> </a> <a href="https://firebase.google.com/" target="_blank"> <img src="https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg" alt="firebase" width="40" height="40"/> </a> <a href="https://flutter.dev" target="_blank"> <img src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg" alt="flutter" width="40" height="40"/></a> <a href = "https://riverpod.dev/" tarrget = "_blank"> <img src = "https://riverpod.dev/img/logo.svg" height = "40" width = "40"/> </a>

## What does it do?

It is a sample Flutter application that demonstrates using a docker devcontainer and the use of Firebase authentication to a Flutter app using Riverpod as a State management solution.
Currently you can login using E-mail and Password or Google sign in.

## Developing on your local machine

1. Fork this repo
2. Clone it on your local machine
3. Run `flutter pub get`
4. In your Firebase console, register a new Firebase project and activate email and google authentification
5. Run `firebase login`
6. RUN `flutterfire configure` and follow the dialog to create the firebase_options.dart file
7. On your host machine, install the chrome extension [dart-debug extension](https://chrome.google.com/webstore/detail/dart-debug-extension/eljbmlghnomdjgdjmbdekegdkbabckhm)
7. Run `flutter run -d web-server` or open the main.dart file and press F5 (starting might take a while)
8. On your host' chrome browser, open the link that it shows you in the console
9. Start the debug extension on the page

That's it you are good to go. Basic email sign-up and login should be working now.

**Note: For a working google sign in you will have to do some extra configuration, depending on the platform you are using here is a [tutorial](https://blog.codemagic.io/firebase-authentication-google-sign-in-using-flutter/)

## Screenshots

<p float = "left">
<img src = "Screenshots\img1.jpg" height = "700"/>
<img src = "Screenshots\img2.jpg" height = "700"/>
</p>

## Live Working

<img src = "Screenshots\gif.gif" height = "700"/>

## Contributing

Contrtibutions are welcome. Go ahead and fork this repo and create a pull request. Currently you can contribute by adding new features or fixing bugs. New features include like authentication using Facebook, Apple, Twitter and more. You can add more platform support for web, iOS, Windows and more.
