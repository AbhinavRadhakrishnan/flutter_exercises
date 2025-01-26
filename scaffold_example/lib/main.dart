import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title', // Set the title of the app
      theme: ThemeData(
        primarySwatch: Colors.green, // Set the primary color scheme to green
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter Demo',
              style: TextStyle(color: Colors.deepOrangeAccent),
            ),
            backgroundColor: Colors.black26,
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Large and Bold Text',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16), // Space between the texts
                Text(
                  'Small and Italic Text',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
