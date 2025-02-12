import 'package:flutter/material.dart';
import 'package:login_sample/main.dart';
import 'package:login_sample/screens/home.dart';
import 'package:login_sample/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/abhi.jpeg',
          height: 300,
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => ScreenLogin(),
      ),
    );
  }

  checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _userLoggedIN = _sharedPrefs.getBool(SAVE_KEY_NAME);
    if (_userLoggedIN == null || _userLoggedIN == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreenHome()));
    }
  }
}
