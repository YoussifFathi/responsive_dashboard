import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';

class CustomListTileItem extends StatelessWidget {
  const CustomListTileItem(
      {super.key, required this.listTileItemModel, required this.isActive});

  final DrawerItemModel listTileItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            listTileItemModel.title,
            style: TextStylesHandler.styleRegular16(context).copyWith(
              color: isActive ? const Color(0xff4EB7F2) : const Color(0xFF064060),
            ),
          ),
        ),
        leading: SvgPicture.asset(listTileItemModel.image),
        trailing: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: isActive ? 4 : 0,
          color: const Color(0xff4EB7F2),
        ),
      ),
    );
  }
}
