import 'package:firebase_app/Pages/Home/view/home.dart';
import 'package:firebase_app/Utils/exports.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Home();
        } else if (snapshot.connectionState == ConnectionState.none) {
          return const Text("Internet Connection Failed");
        } else {
          return const Login();
        }
      },
    );
  }
}
