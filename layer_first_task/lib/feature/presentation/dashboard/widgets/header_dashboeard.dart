import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';

class HeaderDashboeard extends StatelessWidget {
  const HeaderDashboeard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Row(
         children: [
           SvgPicture.asset(
           IconPath.notofication,
            width: 24,
            height: 24,
          ),
           SvgPicture.asset(
                IconPath.setting,
                width: 24,
                height: 24,
              ),
         ],
       ),
          Row(
            children: [
               Column(
            children: [
              Text(
                'فاطمه نیک خواه',
                style: TextStyle(
                  fontFamily: "dana",
                  fontSize: 12,
                  color: ColorPallet.lightColorScheme.onSurface,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text('مدیر ',
               style: TextStyle(
                  fontFamily: "dana",
                  fontSize: 12,
                  color: ColorPallet.lightColorScheme.surfaceBright,
                  fontWeight: FontWeight.w800,
                ),),
            ],
          ),
              SvgPicture.asset(
                SvgPath.Avatar,
                width: 65,
                height: 65,
              ),
            ],
          ),
         
       
      
         
        ],
      ),
    );
  }
}
