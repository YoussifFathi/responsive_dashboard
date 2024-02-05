import 'package:flutter/material.dart';

import 'package:responsive_dashboard/utils/textstyles_handler.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/my_card_section/custom_card_page_builder.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/my_card_section/transactions_history/transction_history.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My card',style: TextStylesHandler.styleSemiBold20(context),),
          const SizedBox(height: 20,),
          const CustomCardPageBuilder(),
          const SizedBox(height: 20,),
          const TrasnctionHistory(),
        ],
      ),
    );
  }
}


