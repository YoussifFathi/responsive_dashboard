import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';

class CustomInvoiceHeader extends StatelessWidget {
  const CustomInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: TextStylesHandler.styleSemiBold20(context),
        ),
        const CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          radius: 24,
          child: Icon(Icons.add,color: Color(0xff4EB7F2),),
        )
      ],
    );
  }
}
