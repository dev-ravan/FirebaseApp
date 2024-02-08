import 'package:firebase_app/Utils/exports.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 800), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const AuthGate()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: Center(
        child: MyTexts().WhiteLogoText(size: 40),
      ),
    );
  }
}
