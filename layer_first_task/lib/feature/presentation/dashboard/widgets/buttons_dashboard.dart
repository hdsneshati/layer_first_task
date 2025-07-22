import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';

class ButtonsDashboard extends StatelessWidget {
  const ButtonsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(26.0),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ButtonD(
            label:  '  گزارش گیری ',
            iconPath:IconPath.chartbutton,
            color1: Color(0xff4390E8),
            color2: Color(0xff9AC2FF),
            w: 35,
            h: 35 ,
          ),
           ButtonD(
            label:  ' محصولات',
            iconPath:IconPath.hanger,
            color1: Color(0xffE74242),
            color2: Color(0xffFF8C8C),
            w: 36, h: 24,
          ),
           ButtonD(
            label:  '  گروه مشتریان',
            iconPath:IconPath.tag,
            color1: Color(0xffE8A043),
            color2: Color(0xffFEEA99),
            w: 30,
            h: 30,
          ),
        ],
      ),
    );
  }
}

class ButtonD extends StatelessWidget {
 final String label;
 final String iconPath;
 final Color color1;
 final Color color2;
 final double w;
 final double h;
  const ButtonD({
    super.key,
    required this.label,
    required this.iconPath,
    required this.color1, 
    required this.color2,
    required this.w,
    required this.h,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Container(
            width: 52,
            height: 48,
            decoration: BoxDecoration(
              gradient: LinearGradient(
               colors: [color1, color2], // رنگ پس‌زمینه
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: SvgPicture.asset(
                iconPath,
                width: w,
                height: h,
                color:Color.fromARGB(255, 233, 235, 237) ,
              ),
            ),
          ),
         Text(
                   label,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 10,
                      fontFamily: 'dana',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
             ] 
             ),
    );
  }
}