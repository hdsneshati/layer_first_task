import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';

class PrimaryProfileButton extends StatelessWidget {
  final VoidCallback onTap; // تابعی که هنگام کلیک اجرا می‌شود
  final String text; // متن دکمه
  final String icon;

  const PrimaryProfileButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.icon,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: onTap,
     borderRadius: BorderRadius.circular(12),
     
     child: Container(
       width: 380, 
       height: 53,        
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(1),      
         color:Theme.of(context).colorScheme.outline,                                   
                ),
    
    child:
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            icon,
            width: 36,
            height: 36,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Text(
            text,
           style: TextStyle(
           fontFamily: 'dana',
           fontSize: 12.0,
           fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
            ),
                      ),
             Spacer(),
            SvgPicture.asset(
            SvgPath.handle,
            width: 36,
            height: 36,
          ),         
        ],
      ),
    
     ),
     
    );
  }
}