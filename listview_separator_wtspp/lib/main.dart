import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
            child: ListView.separated(
                itemBuilder: (ctx, index) {
                  return ListTile(
                    title: Text('Person $index'),
                    subtitle: Text('Message $index'),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                      backgroundImage: AssetImage('assets/images/WhatsApp Image 2025-01-01 at 8.45.15 PM.jpeg'),

                    ),
                    trailing: Text('1$index:00 PM'),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return Divider();
                },
                itemCount: 30,
                )
                ),
      ),
    );
  }
}
