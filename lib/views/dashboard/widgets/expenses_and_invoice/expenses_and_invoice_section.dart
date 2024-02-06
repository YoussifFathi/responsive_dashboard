import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/custom_expenses_container.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/custom_invoice_container.dart';

class ExpensesAndInvoiceSection extends StatelessWidget {
  const ExpensesAndInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        CustomExpensesContainer(),
        SizedBox(
          height: 40,
        ),
        CustonInvoiceContainer(),
      ],
    );
  }
}
