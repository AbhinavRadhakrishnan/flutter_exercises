import 'package:flutter/material.dart';
import 'package:login_sample/main.dart';
import 'package:login_sample/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username'),
                  validator: (value) {
                    // if (_isDataMatched) {
                    //   return null;
                    // } else {
                    //   return 'error';
                    // }
                    if (value == null || value.isEmpty) {
                      return 'Value is Empty';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Password'),
                  validator: (value) {
                    //   if (_isDataMatched) {
                    //     return null;
                    //   } else {
                    //     return 'error';
                    //   }
                    if (value == null || value.isEmpty) {
                      return 'Value is Empty';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                        visible: !_isDataMatched,
                        child: Text(
                          'Username password doesnot match',
                          style: TextStyle(color: Colors.red),
                        )),
                    ElevatedButton.icon(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            checkLogin(context);
                          } else {
                            print('Data empty');
                          }

                          checkLogin(context);
                          
                        },
                        icon: const Icon(Icons.check),
                        label: const Text('Login')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      //go to home

      print("username pass match");
      final _sharedPrefs = await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(SAVE_KEY_NAME, true);
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreenHome()));
    } else {
      print("username pass doesnot match");
      // final _errormsg = 'username password doesnot match';
      // //snack bar
      // ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      //   behavior: SnackBarBehavior.floating,
      //   backgroundColor: Colors.red,
      //   margin: EdgeInsets.all(10),
      //   content: Text(_errormsg),
      //   duration: Duration(seconds: 2),
      // ));

      // //Alert dialog(popup)

      // showDialog(
      //     context: ctx,
      //     builder: (ctx1) {
      //       return AlertDialog(
      //         title: Text('error'),
      //         content: Text(_errormsg),
      //         actions: [
      //           TextButton(
      //             onPressed: () {
      //               Navigator.of(ctx1).pop();
      //             },
      //             child: Text('close'),
      //           )
      //         ],
      //       );
      //     });

      // //Show Text
      // setState(() {
      //   _isDataMatched = false;
      // });
    }
  }
}
