import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic/screen_1.dart';
import 'package:neumorphic/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
        themeMode: ThemeMode.light,
        theme: NeumorphicThemeData(
            baseColor: Color(0xFFE5EDF5),
            lightSource: LightSource.topLeft,
            depth: 3),
        home: Screen1());
  }
}
