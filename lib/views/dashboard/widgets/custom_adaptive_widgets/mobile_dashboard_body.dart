import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/card_and_income_section.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/expenses_and_invoice_section.dart';

class MobileDashboardBody extends StatelessWidget {
  const MobileDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ExpensesAndInvoiceSection(),
          CardAndIncomeSection()
        ],
      ),
    );
  }
}
