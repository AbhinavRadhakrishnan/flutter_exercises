import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 50,
              child: Text("20 feb"),
              
              ),
              title: Text("RS 1000"),
              subtitle: Text("travel"),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 20);
  }
}
