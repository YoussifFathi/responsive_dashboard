import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/send_money_form/custom_send_money_text_field.dart';

class CustomSendMoneyRow extends StatelessWidget {
  const CustomSendMoneyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Customer name',
                style: TextStylesHandler.styleMedium16(context),
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomSendMoneyTextField(),
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Customer Email',
                style: TextStylesHandler.styleMedium16(context),
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomSendMoneyTextField(),
            ],
          ),
        ),
      ],
    );
  }
}
