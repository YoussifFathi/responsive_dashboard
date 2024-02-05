import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/custom_invoice_divider.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/custom_invoice_header.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/latest_trans_list_view/latest_transactions_list_view.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/send_money_form/send_money_section.dart';

class CustonInvoiceContainer extends StatelessWidget {
  const CustonInvoiceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:  double.infinity,
      // height: 580,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomInvoiceHeader(),
          const SizedBox(height: 20,),
          Text('Latest Transactions',style: TextStylesHandler.styleMedium16(context),),
          const SizedBox(height: 12,),
          const LatestTransactionsListView(),
          const CustomInvoiceDivider(),
          const SendMoneySection(),
        ],
      ),
    );
  }
}



