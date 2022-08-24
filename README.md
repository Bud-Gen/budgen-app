# BudGen-app



App 

Hello,you need to meet some requirements:
- have a machine with Flutter 2.10;
- have a min Dart SDK 2.x
- have a mobile emulator (Android or IOS)*;
   > in case it doesn't, the app runs in the chrome browser, but it's not sure to contain all the functionality. 

### Run app

to run the app, you need to follow the steps:

1. Open the repository: 
```cd budgen```

2. Download dependencies:
``` flutter pub get ```

3. Generate the project's auxiliary files:
``` flutter pub run build_runner build ```

> if an error occurs in this step, consider running the following command ```flutter pub run build_runner build --delete-conflicting-outputs```

4. run the app
```flutter run ```



