import 'package:flutter/material.dart';

import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/custom_expenses_header.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/expenses_listview/custom_expenses_listview.dart';

class CustomExpensesContainer extends StatelessWidget {
  const CustomExpensesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          CustomExpensesHeader(),
          SizedBox(height: 16,),
          CustomExpensesListView()
        ],
      ),
    );
  }
}

