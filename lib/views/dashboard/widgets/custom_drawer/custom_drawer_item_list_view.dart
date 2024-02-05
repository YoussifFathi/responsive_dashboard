import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/assets_handler.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer/custom_list_tile_item.dart';

class CustomDrawerItemsListView extends StatefulWidget {
  const CustomDrawerItemsListView({super.key});

  @override
  State<CustomDrawerItemsListView> createState() =>
      _CustomDrawerItemsListViewState();
}

class _CustomDrawerItemsListViewState extends State<CustomDrawerItemsListView> {
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: AssetsHandler.imagesDashboard),
    DrawerItemModel(
        title: 'My Transaction', image: AssetsHandler.imagesMyTransctions),
    DrawerItemModel(
        title: 'Statistics', image: AssetsHandler.imagesStatistics),
    DrawerItemModel(
        title: 'Wallet Account', image: AssetsHandler.imagesWalletAccount),
    DrawerItemModel(
        title: 'My Investments', image: AssetsHandler.imagesMyInvestments),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (currentIndex != index) {
              setState(() {
                currentIndex = index;
              });
            }
          },
          child: CustomListTileItem(
            listTileItemModel: items[index],
            isActive: currentIndex == index,
          ),
        );
      },
      itemCount: items.length,

    );
  }
}
