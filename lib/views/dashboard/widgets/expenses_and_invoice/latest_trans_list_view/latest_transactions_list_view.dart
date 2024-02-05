import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/utils/assets_handler.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/expenses_and_invoice/latest_trans_list_view/latest_trans_item.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({super.key});

  static const List<LatestTransactionModel> items = [
    LatestTransactionModel(
        name: 'Madrani Andi ',
        email: 'Madraniadi20@gmail ',
        image: AssetsHandler.imagesAvatar1),
    LatestTransactionModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        image: AssetsHandler.imagesAvatar2),
    LatestTransactionModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        image: AssetsHandler.imagesAvatar3),
    LatestTransactionModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        image: AssetsHandler.imagesAvatar1),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items
              .map((e) => IntrinsicWidth(
                    child: LatestTransItem(
                      latestTransactionModel: e,
                    ),
                  ))
              .toList()),
    );
    // return SizedBox(
    //   height: 70,
    //   child: ListView.builder(
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //           child: LatestTransItem(latestTransactionModel: items[index]));
    //     },
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //   ),
    // );
  }
}
