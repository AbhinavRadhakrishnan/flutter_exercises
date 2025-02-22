import 'package:flutter/material.dart';
import 'package:money_manager/db/category/category_db.dart';
import 'package:money_manager/screens/category/expense_category_list';
import 'package:money_manager/screens/category/income_category_list.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({super.key});

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    CategoryDB().refershUI();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            tabs: const [
              Tab(
                text: "INCOME",
              ),
              Tab(
                text: "EXPENSE",
              )
            ]),
        Expanded(
          child: TabBarView(
              controller: _tabController,
              children: const [IncomeCategoryList(), ExpenseCategoryList()]),
        )
      ],
    );
  }
}
