import 'package:flutter/material.dart';
import 'package:routing/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(),
            ElevatedButton(
              onPressed: (){

              }, 
              child: Text('Save value')
              )
          ],
        ),
        // child: Column(
        //   children: [
        //     Text('Screen 1'),
        //     ElevatedButton(
        //         onPressed: () {
        //           // Navigator.of(context).push(
        //           //   MaterialPageRoute(
        //           //    builder: (ctx) {
        //           //     return ScreenTwo();
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
}
