import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';

class CustomExpensesHeader extends StatelessWidget {
  const CustomExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: TextStylesHandler.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.grey.shade300
            )
          ),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: TextStylesHandler.styleMedium16(context),
              ),
              const SizedBox(width: 15,),
              const Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xff064061),size: 26,)
            ],
          ),

        ),
      ],
    );
  }
}
