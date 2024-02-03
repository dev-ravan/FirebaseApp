import 'package:firebase_app/Utils/exports.dart';
import 'package:firebase_app/Utils/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
        ChangeNotifierProvider<SignUpProvider>(
            create: (context) => SignUpProvider()),
        ChangeNotifierProvider<ProfileProvider>(
            create: (_) => ProfileProvider())
      ],
      child: MaterialApp(
        title: 'Firebase App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xff005c9a),
              brightness: Brightness.light,
            ),
            useMaterial3: true),
        home: const Splash(),
      ),
    );
  }
}
