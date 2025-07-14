import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/strings.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/login/widgets/LoginButton.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Center(
      child: Column(children: [
        127.0.verticalSpace,
           SvgPicture.asset(
                SvgPath.messageText,
                width: 100,
                height: 100,
                color: Theme.of(context).colorScheme.primary,
              ), 
            
            Text('کد به شماره 09024365997 ارسال شد'
              ,style: TextStyle(
                fontFamily: 'dana',
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                 color: Theme.of(context).colorScheme.onSurface,
              )
              ,),
             

               



             
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
              Text(' ویرایش شماره'
              ,style: TextStyle(
                fontFamily: 'dana',
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                 color: Theme.of(context).colorScheme.primary,
              )
              ,),
                SvgPicture.asset(
                IconPath.edit,
                width: 24,
                height: 24,
                color: Theme.of(context).colorScheme.primary,
              ), 
                ],
              ),
                Text(' دریافت نکردید؟ 02:30تا ارسال مجدد'
              ,style: TextStyle(
                fontFamily: 'dana',
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                 color: Theme.of(context).colorScheme.onSurface,
              )
              ,),
              Spacer(),
               PrimaryButton( onTap: () {    
                   print("Login button tapped!");
                    },
                   text: StringConsts.loginButton, 
                    ),
                    30.0.verticalSpace,
              ],
          ),
    ),
      
    );
  }
}