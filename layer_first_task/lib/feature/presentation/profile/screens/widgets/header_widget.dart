import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';
import 'package:layer_first_task/config/theme/text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
     child: Container(
           width: 375, 
           height: 65,        
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(1),      
             color:Theme.of(context).colorScheme.secondaryContainer,                                   
            ),  
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SvgPicture.asset(
            IconPath.arrow,
            width: 12,
            height: 12,
            color: ColorPallet.lightColorScheme.onSurface,
            ),
                  Row(
              
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('مجموعه اعتماد',
                    style: lightTextTheme.titleMedium,),
                    
                    Row(
                      children: [
                         const  Text('اشتراک فعال',
                       style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(143, 139, 139, 129),
                       ),
                    ),
                      SvgPicture.asset(
                        SvgPath.ellipse,
                        width: 12,
                        height: 12,
                       ),
                    
                       ]
                    ),
                  ],
                ),
                SvgPicture.asset(
                  SvgPath.Avatar,
                  width: 65,
                  height: 65,
                ),
              ],
            ),
              ] ),
          ),
        ),
             
    );
  }
}