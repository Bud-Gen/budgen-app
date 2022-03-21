# BudGen

this project is developed in Flutter 2.8.1, using Dart 2.15.1 . It is recommended to use these specifications for updates and playback.

## Getting Started

This project is a starting point for a Flutter application.

started, run in terminal:

``` 
flutter pub get
```

``` 
flutter pub run build_runner build
```

and 

```
flutter run 
````


## Troubleshooting

if the *flutter pub run build_runner build* command returns a conflict error, run:
```
flutter pub run build_runner build --delete-conflicting-outputs
```

if run in new Macbook with M1, try to run the app with

``` 
 flutter run | grep -v "Error retrieving thread information"
```