# flash_chat_wf

Flash chat app with firebase

## Animation

a ticker: tick our animation, every time it ticks it trigger an animation
  - vsync: this > ticker provider is our state Object
an animation controller: manager of the animation, a.c. class
an animation value: from 0 to 1, the value make able to change the opacity, size, etc

CurvedAnimation(parent: null, curve: null);
- parent: what will be applied the curve to
- curve: what kind of curve will be applied.

## Firebase
- cloud_firestore
- firebase_auth

https://firebase.flutter.dev/docs/overview/

For ios:
- pod repo update
- gem install cocoapods
- pod setup

if it takes too long to run the app in the emulator, go to ios/ and do "pod install"


## animation

spinner while login: modal_progress_hud: ^0.1.3


## Dart Streams
futures ~ promises ~ receipt you get after ordering your food
streams ~ are like the sushi food you are "getting piece of data as they come through"

Already available : String      / List<String>
Need to wait : Future<String>   / Stream<String>

For messages is better to use a Stream, because it doesn't depend on a user action to get the information as when once use documents.

## Links with solutions i needed

https://stackoverflow.com/questions/55591958/flutter-firestore-causing-d8-cannot-fit-requested-classes-in-a-single-dex-file
https://stackoverflow.com/questions/49420636/drawable-ic-launcher-foreground-not-found-how-to-find-that-xml-file
https://www.youtube.com/watch?v=NJp14BeTjAs
https://github.com/FirebaseExtended/flutterfire/issues/2751