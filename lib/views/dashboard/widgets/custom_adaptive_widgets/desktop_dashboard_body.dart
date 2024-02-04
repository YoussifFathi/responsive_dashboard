import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer.dart';

class DesktopDashboardBody extends StatelessWidget {
  const DesktopDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const Expanded(flex: 3,child: ExpensesAndInvoice()),
        Expanded(child: Container(color: Colors.red,)),
      ],
    );
  }
}

class ExpensesAndInvoice extends StatelessWidget {
  const ExpensesAndInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
