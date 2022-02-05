import 'package:BudGen/domain/usecases/mock_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  MockData mock = MockData();

  await mock.call();
  runApp(App());
}
