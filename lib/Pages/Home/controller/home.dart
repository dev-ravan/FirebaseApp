import 'package:firebase_app/Utils/exports.dart';

class HomeProvider extends ChangeNotifier {
  AuthFireServices authService = AuthFireServices();

  // log out button
  logOut() {
    authService.logOut();
    notifyListeners();
  }
}
