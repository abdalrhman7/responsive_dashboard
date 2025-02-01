import 'package:flutter/material.dart';
import 'package:responsive/model/all_expenses_item_model.dart';

import 'all_exspensses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
        image: 'assets/images/income.svg',
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: 'assets/images/income.svg',
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: 'assets/images/expenses.svg',
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelect: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelect: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isSelect: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                itemModel: item,
                isSelect: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
