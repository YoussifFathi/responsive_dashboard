
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/assets_handler.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(left: 16,right: 16,top: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          'Lekan Okeowo',
          style: TextStylesHandler.styleBold16(context).copyWith(
            color: const Color(0xff064061)
          ),
        ),
        subtitle: Text('demo@gmail.com',style: TextStylesHandler.styleRegular12(context),),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(AssetsHandler.imagesAvatar1),
        ),
      ),
    );
  }
}
