import 'package:flutter/material.dart';

void main() {
  runApp(ListViewSample());
}

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('List view sample project'),
      ),
      body: SafeArea(
          child: ListView(
        children: List.generate(100, (index) {
          return Column(
            children: [
              Text('text $index'),
              Divider(thickness: 3,color: Colors.yellow,),
            ],
          );
        }),
      )
    ),
    ),
    );
  }
}
