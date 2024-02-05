import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/expenses_and_invoice_section.dart';

class DesktopDashboardBody extends StatelessWidget {
  const DesktopDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const Expanded(flex: 3,child: ExpensesAndInvoiceSection()),
        Expanded(flex: 2,child: Container(color: Colors.red,)),
      ],
    );
  }
}

