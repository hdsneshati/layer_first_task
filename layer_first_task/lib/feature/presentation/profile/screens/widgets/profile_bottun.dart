import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class PrimaryProfileButton extends StatelessWidget {
  final VoidCallback onTap; // تابعی که هنگام کلیک اجرا می‌شود
  final String text;
  final String icon;
  final double w;
  final double h;

  const PrimaryProfileButton({
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
     borderRadius: BorderRadius.circular(12),
     
     child: Container(
       width: 380, 
       height: 60,        
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(1),      
         color:Color.fromARGB(217, 248, 253, 255),                                     
                ),    
    child:
      Row(        
        children: [
          12.0.horizontalSpace,

            SvgPicture.asset(
            IconPath.handle,
            width: 36,
            height: 36,),

          const  Spacer(),

          Text(
            text,
           style: TextStyle(
           fontFamily: 'dana',
           fontSize: 12.0,
           fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 167, 166, 166),
            ),
                      ),

           16.0.horizontalSpace,

           SvgPicture.asset(
            icon,
            width: w,
            height: h,
           colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.secondary,

   BlendMode.srcIn,
),
          ),         
         
           12.0.horizontalSpace,
        ],
      ),
    
     ),
     
    );
  }
}