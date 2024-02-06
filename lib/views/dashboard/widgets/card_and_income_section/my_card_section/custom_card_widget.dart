import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/card_model.dart';
import 'package:responsive_dashboard/utils/assets_handler.dart';
import 'package:responsive_dashboard/utils/textstyles_handler.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin:const EdgeInsets.all(24) ,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16,),
        color: const Color(0xff4EB7F2),
        image: const DecorationImage(image: AssetImage(AssetsHandler.imagesCardBackground,),fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            title: Text('Name card',style: TextStylesHandler.styleRegular16(context).copyWith(
              color: Colors.white,
            ),),
            subtitle: Text(cardModel.name,style: TextStylesHandler.styleMedium20(context).copyWith(
                height: 1.5
            ),),
            trailing: SvgPicture.asset(AssetsHandler.imagesGallery),

          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(cardModel.number,style: TextStylesHandler.styleSemiBold24(context).copyWith(
                    color: Colors.white
                ),),
                Text(cardModel.dateAndCvv,style: TextStylesHandler.styleRegular16(context).copyWith(
                    color: Colors.white

                ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}
