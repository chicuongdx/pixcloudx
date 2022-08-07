import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  String username;
  String email;
  String password;

  UserProvider(
      {required this.username, required this.email, required this.password});
}
