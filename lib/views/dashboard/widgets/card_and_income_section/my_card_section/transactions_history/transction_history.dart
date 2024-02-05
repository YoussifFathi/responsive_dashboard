import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/my_card_section/transactions_history/transction_history_list_view.dart';


class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TansctionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: TextStylesHandler.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransctionHistoryListView(),
      ],
    );
  }
}

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: TextStylesHandler.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: TextStylesHandler.styleMedium16(context).copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
