import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_pre/screen_2.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});

  final _textControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getsavedData(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _textControl,
              ),
              ElevatedButton(
                  onPressed: () {
                    saveDataToStorage();
                  },
                  child: Text('Save value'))
            ],
          ),
        ),
        // child: Column(
        //   children: [
        //     Text('Screen 1'),
        //     ElevatedButton(
        //         onPressed: () {
        //           // Navigator.of(context).push(
        //           //   MaterialPageRoute(
        //           //    builder: (ctx) {
        //      return ScreenTwo();
        //           // }
        //           // )
        //           // );

        //           Navigator.of(context).pushNamed('screen_2'); //by setting routes on main.dart(push by name)
        //         },
        //         child: Text('go to Screen 2'))
        //   ],
        // ),
        // child: ListView.separated(
        //     itemBuilder: (ctx, index) {
        //       return ListTile(
        //         title: Text('Person $index'),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        //             return ScreenTwo(name: 'Person $index');
        //           }));
        //         },
        //       );
        //     },
        //     separatorBuilder: (ctx, index) {
        //       return Divider();
        //     },
        //     itemCount: 30),
      ),
    );
  }

  Future<void> saveDataToStorage() async {
    print(_textControl.text);

    //shared preference
    final shareprefs = await SharedPreferences.getInstance();

    //save value

    await shareprefs.setString('saved_value', _textControl.text);
  }

  getsavedData(BuildContext context) async {
    final sharedprefs = await SharedPreferences.getInstance();
    final savedvalue = sharedprefs.getString('saved_value');
    if (savedvalue != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenTwo()));
    }
  }
}
