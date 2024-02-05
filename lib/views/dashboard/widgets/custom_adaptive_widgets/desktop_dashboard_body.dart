import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/card_and_income_section.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/expenses_and_invoice_section.dart';

class DesktopDashboardBody extends StatelessWidget {
  const DesktopDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Row(
      children: [
       Expanded(child: CustomDrawer()),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 3,child: ExpensesAndInvoiceSection()),
                Expanded(flex: 2,child: CardAndIncomeSection()),
              ],
            ),
          ),
        ),

      ],
    );
  }
}

