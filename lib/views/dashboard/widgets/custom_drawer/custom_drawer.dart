import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/assets_handler.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer/custom_drawer_header.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer/custom_drawer_item_list_view.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer/custom_list_tile_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomDrawerHeader()),
          CustomDrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 40,
                )),
                CustomListTileItem(
                  listTileItemModel: DrawerItemModel(
                      title: 'Setting system',
                      image: AssetsHandler.imagesSettings),
                  isActive: false,
                ),
                CustomListTileItem(
                  listTileItemModel: DrawerItemModel(
                      title: 'Logout account',
                      image: AssetsHandler.imagesLogout),
                  isActive: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
