import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';

class OrdersDashboard extends StatelessWidget {
  const OrdersDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: Container(
              width: 370,
              height: 83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
               border: Border.all(
                  color: Color(0xffEDEDED),
                  width: 1,
                ),
              ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            
            
              InkWell(
                child: Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Theme.of(context).colorScheme.primary, // 🎨 رنگ خط دور
                      width: 1, // ضخامت خط
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      Text(
                        'افزودن سفارش جدید ',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 12,
                          fontFamily: 'dana',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             
               Row(
              children: [
                 Text(
                        'سفارشی ثبت نشده است ',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondaryContainer,
                          fontSize: 12,
                          fontFamily: 'dana',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                SvgPicture.asset(
                  IconPath.note,
                  width: 24,
                  height: 24,
                  ),
                
              ],
             ),
            
             
            ],
          ),
        ),
      ),
    );
  }
}