import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:jab/shared/constants.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //to ensure the initialisation of all widgets present.

  if (kIsWeb) {
    //run initialisation for web only.
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appId,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  } else {
    //run initialisation for android and ios.
    await Firebase.initializeApp();
  }

  // to initializ firebase for android and ios.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
