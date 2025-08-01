import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class OptionTile extends StatelessWidget {
  final VoidCallback onTap; // تابعی که هنگام کلیک اجرا می‌شود
  final String text;
  final String icon;
  final double w;
  final double h;

  const OptionTile({
   super. key,
    required this.onTap,
    required this.text,
    required this.icon,
    required this.w,
    required this.h,

  }) ;


  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: onTap,
     
     child: SizedBox(
      height: 60,
       child: Row(        
         children: [
          
       Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.outline)),
              child: Center(
                child: Icon(
                  Icons.chevron_left,
                  color: Theme.of(context).colorScheme.surfaceBright,
                ),
              ),
            ),
            
       
           const  Spacer(),
       
           Text(
             text,
            style: TextStyle(
            fontFamily: 'dana',
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.surfaceBright,
             ),
                       ),
       
            8.0.horizontalSpace,
       
            SvgPicture.asset(
             icon,
             width: w,
             height: h,
            colorFilter: ColorFilter.mode(
                         Theme.of(context).colorScheme.secondary,
       
          BlendMode.srcIn,
       ),
           ),         
          
            
         ],
       ),
     ),
     
    );
  }
}