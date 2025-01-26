import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Macfast',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 100,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      print('text button clicked');
                    },
                    child: Text(
                      'Press',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        print('icon button clicked');
                      },
                      icon: Icon(Icons.import_contacts))
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    print('elivated button clicked');
                  },
                  child: Text(
                    'press me',
                    style: TextStyle(color: Colors.deepOrange),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
