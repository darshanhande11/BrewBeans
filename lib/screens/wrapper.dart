import 'package:brew_beans/models/user.dart';
import 'package:brew_beans/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:brew_beans/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    //return Home/Authenticate Widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
