
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/img_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';
import 'package:layer_first_task/config/theme/text_styles.dart';
import 'package:layer_first_task/feature/presentation/profile/screens/widgets/primary_profile_bottun.dart';

class ProfileScreen extends  StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          81.0.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              250.0.horizontalSpace,
              Text('مدیریت سیستم',
              style: lightTextTheme.titleMedium,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              SvgPicture.asset(
                IconPath.arrow,
                width: 12,
                height: 12,
                color: ColorPallet.lightColorScheme.onSurface,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('مجموعه اعتماد',
                      style: lightTextTheme.titleMedium,),
                      Row(
                        children: [
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
                    width: 15,
                    height: 15,
                  ),
                ],
              ),
                     ] ),
          ),
     Padding(
           padding: const EdgeInsets.symmetric(horizontal: 6),
            child: SingleChildScrollView(
            child: Column(
              children: [ 
                  PrimaryProfileButton(
                    onTap: (){},                    
                    text: 'مدیریت محصولات ',                    
                    icon: SvgPath.glass,                   
                    ),
                     Divider(height: 16, color: Colors.grey),
                  PrimaryProfileButton(
                    onTap: (){},
                     text: 'مدیریت گروه مشتریان',
                     icon: SvgPath.glass,
                     ),
                      Divider(height: 16, color: Colors.grey),
                  PrimaryProfileButton(                    
                    onTap: (){},                    
                    text: 'کاربران سیستم',                    
                    icon: SvgPath.glass,                   
                    ),
                     40.0.verticalSpace,
                  PrimaryProfileButton(                    
                    onTap: (){},                    
                    text: 'آموزش کار با سیستم',                    
                    icon: SvgPath.glass,                   
                    ),
                     Divider(height: 16, color: Colors.black),
                  PrimaryProfileButton(                    
                    onTap: (){},                    
                    text: 'حریم خصوصی',                    
                    icon: SvgPath.glass,                   
                    ),
                    ]
                )
             )
            ),
             
         SvgPicture.asset(
          IconPath.call,
          width: 40,
          height: 40,
         ),

       
        ],
      ),
    );
  }
}