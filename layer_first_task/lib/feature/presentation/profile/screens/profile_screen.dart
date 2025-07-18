
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/img_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';
import 'package:layer_first_task/config/theme/text_styles.dart';
import 'package:layer_first_task/feature/presentation/profile/screens/widgets/call_information_widget.dart';
import 'package:layer_first_task/feature/presentation/profile/screens/widgets/header_widget.dart';
import 'package:layer_first_task/feature/presentation/profile/screens/widgets/profile_bottun.dart';

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
                
                  20.0.verticalSpace,     
                  
                  const   HeaderWidget(),
    
                  PrimaryProfileButton(
                    onTap: (){},                    
                    text: 'مدیریت محصولات ',                    
                    icon: SvgPath.hanger, 
                    w: 36.64,         
                    h: 24,         
                    ),
                  const   Divider(height: 1, color: Colors.grey,indent: 2,endIndent: 2, ),
                  PrimaryProfileButton(
                    onTap: (){},
                     text: 'مدیریت گروه مشتریان',
                     icon: IconPath.tag,
                     w: 36,
                     h: 36,
                     ),
                   const   Divider(height: 1, color: Colors.grey,indent: 2,endIndent: 2,),
                  PrimaryProfileButton(                    
                    onTap: (){},                    
                    text: 'کاربران سیستم',                    
                    icon: IconPath.profile2user, 
                    w: 36,
                    h: 36,                  
                    ),
                     40.0.verticalSpace,
                  PrimaryProfileButton(                    
                    onTap: (){},                    
                    text: 'آموزش کار با سیستم',                    
                    icon: IconPath.videoplay,      
                    w: 32,             
                    h: 32,
                    ),
                    const Divider(height: 1, color: Colors.grey,indent: 2,endIndent: 2,),
                  PrimaryProfileButton(                    
                    onTap: (){},                    
                    text: 'حریم خصوصی',                    
                    icon: IconPath.securitysafe, 
                    w: 32,     
                    h: 32,             
                    ),
          
                 const Spacer(),

                const CallInformationWidget(),
                
                 80.0.verticalSpace,
        ],
      ),
    );
  }
}


