import 'package:flutter/material.dart';
import 'package:my_app/models/user.dart';
import 'package:my_app/screens/home/SelectScreen.dart';
import 'package:my_app/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TheUser>(context);
    print("User = " + user.toString());
    // return either Home or Authenticate
    if (user != null) {
      return SelectScreen();
    } else {
      return Authenticate();
    }
  }
}
