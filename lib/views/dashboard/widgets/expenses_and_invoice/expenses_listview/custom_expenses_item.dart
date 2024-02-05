import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';

import 'package:responsive_dashboard/utils/textstyles_handler.dart';

class CustomExpensesItem extends StatelessWidget {
  const CustomExpensesItem({
    super.key, required this.expensesItemModel,
  });

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xffAAAAAA),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xffFAFAFA),
                  child: SvgPicture.asset(expensesItemModel.imageUrl),
                ),
                const Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            const SizedBox(height: 30,),
            Text(expensesItemModel.title,style: TextStylesHandler.styleMedium16(context),),
            const SizedBox(height: 8,),

            Text(expensesItemModel.date,style: TextStylesHandler.styleRegular14(context),),
            const SizedBox(height: 16,),

            Text(expensesItemModel.balance,style: TextStylesHandler.styleSemiBold24(context),),


          ],
        ),
      ),
    );
  }
}
