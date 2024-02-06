import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/card_and_income_section.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/expenses_and_invoice_section.dart';

class TabletDashboardBody extends StatelessWidget {
  const TabletDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                ExpensesAndInvoiceSection(),
                CardAndIncomeSection()
              ],
            ),
          ),
        ),
        SizedBox(width: 32,),

      ],
    );
  }
}
