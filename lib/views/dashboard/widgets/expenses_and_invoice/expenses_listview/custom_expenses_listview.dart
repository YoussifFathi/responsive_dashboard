import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/assets_handler.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/expenses_listview/custom_expenses_item.dart';

class CustomExpensesListView extends StatelessWidget {
  const CustomExpensesListView({super.key});

  static const List<ExpensesItemModel> items = [
    ExpensesItemModel(
        imageUrl: AssetsHandler.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        balance: '\$20,129'),
    ExpensesItemModel(
        imageUrl: AssetsHandler.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        balance: '\$20,129'),
    ExpensesItemModel(
        imageUrl: AssetsHandler.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        balance: '\$20,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.map((e) => CustomExpensesItem(expensesItemModel: e,)).toList(),
    );

  }
}
