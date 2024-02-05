import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';

class LatestTransItem extends StatelessWidget {
  const LatestTransItem({super.key,required this.latestTransactionModel});

  final LatestTransactionModel latestTransactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(right: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          latestTransactionModel.name,
          style: TextStylesHandler.styleBold16(context).copyWith(
              color: const Color(0xff064061)
          ),
        ),
        subtitle: Text(latestTransactionModel.email,style: TextStylesHandler.styleRegular12(context),),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(latestTransactionModel.image),
        ),
      ),
    );
  }
}
