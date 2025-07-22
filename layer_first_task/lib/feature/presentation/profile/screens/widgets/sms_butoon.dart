import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';

class smsButton extends StatelessWidget {
  const smsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 387, 
     height: 82,        
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(4),      
       color:Theme.of(context).colorScheme.secondaryContainer,                                   
      ), 
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            12.0.horizontalSpace,
            Row(children: [
              InkWell(
                child: Container(
                  width: 100,
                  height: 28,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1, // ضخامت خط
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' جزيیات ',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontFamily: "dana",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   
                     Align(
                      alignment: Alignment.centerRight,
                       child: Text(
                          ' بسته پیامک',
                          style: TextStyle(
                            fontFamily: "dana",
                            fontSize: 12,
                            color: ColorPallet.lightColorScheme.onSurface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                     ),
                    
                    Text(
                      ' برای تمدید اشتراک و بسته های پیامک ... ',
                      style: TextStyle(
                        fontFamily: "dana",
                        fontSize: 10,
                        color: ColorPallet.lightColorScheme.onSurface,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  width: 36,
                  height: 36,
                  IconPath.newmassage,
                  
                  color: ColorPallet.lightColorScheme.primary,
                ),
              ],
            ),
            12.0.horizontalSpace,
          ],
        ),
      ),
    );
  }
}
