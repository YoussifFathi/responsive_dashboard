import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/income_section/income_section_body.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/income_section/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          children: [
            IncomeSectionHeader(),
            IncomSectionBody(),
          ],
        ));
  }
}
