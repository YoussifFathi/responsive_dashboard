import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/income_section/income_section.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/my_card_section/my_card_section.dart';

class CardAndIncomeSection extends StatelessWidget {
  const CardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40,),

        MyCardSection(),
        SizedBox(height: 24,),
        IncomeSection(),
        IncomeSection(),

      ],
    );
  }
}

