import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:neumorphic/screen3.dart';
import 'package:neumorphic/screen_1.dart';
import 'package:neumorphic/screen_2.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
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
        home: Screen3());
  }
}


// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       useInheritedMediaQuery: true,
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       home: Screen3(),
//     );
//   }
// }
