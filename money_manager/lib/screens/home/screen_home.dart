import 'package:flutter/material.dart';
import 'package:money_manager/screens/category/screen_category.dart';
import 'package:money_manager/screens/home/widgets/bottom_navigation.dart';
import 'package:money_manager/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = const [ScreenTransaction(), ScreenCategory()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text("MONEY MANAGER",style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent[100],
      ),
      bottomNavigationBar: const MoneyManagerBOttomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext context, int updatedIndex, Widget? _) {
              return _pages[updatedIndex];
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print("add Transactions");
          } else {
            print("add catogery");
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
