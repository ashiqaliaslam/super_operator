import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:super_operator/app.dart';
import 'package:super_operator/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}
