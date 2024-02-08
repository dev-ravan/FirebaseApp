import 'package:firebase_app/Pages/Home/controller/home.dart';
import 'package:firebase_app/Utils/exports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => provider.logOut(),
              icon: const Icon(Icons.logout_outlined))
        ],
      ),
    );
  }
}
