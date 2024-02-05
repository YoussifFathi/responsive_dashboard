import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/send_money_form/custom_send_money_row.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/send_money_form/more_details_and_send_money_buttons_row.dart';

class SendMoneySection extends StatelessWidget {
  const SendMoneySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSendMoneyRow(),
        SizedBox(height: 24,),
        CustomSendMoneyRow(),
        SizedBox(height: 24,),

        MoreDetailsAndSendMoneyButtonsRow()
      ],
    );
  }
}


