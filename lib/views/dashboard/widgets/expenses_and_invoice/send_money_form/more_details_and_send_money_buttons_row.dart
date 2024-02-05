import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';

class MoreDetailsAndSendMoneyButtonsRow extends StatelessWidget {
  const MoreDetailsAndSendMoneyButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Center(
            child: Text("Add more details",style: TextStylesHandler.styleSemiBold18(context).copyWith(
                color: const Color(0xff4EB7F2)
            ),),
          ),
        ),
        const SizedBox(width: 16,),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 60,
            decoration: BoxDecoration(
                color: const Color(0xff4EB7F2),
                borderRadius: BorderRadius.circular(16)
            ),
            child: Center(child: Text("Send Money",style: TextStylesHandler.styleSemiBold18(context),)),
          ),
        )
      ],
    );
  }
}
