import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layer_first_task/config/asset/strings.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/login/widgets/LoginButton.dart';
import 'package:layer_first_task/feature/presentation/login/widgets/RichTextWidget.dart';
import 'package:layer_first_task/feature/presentation/login/widgets/TextFieldWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            100.0.verticalSpace,
            SvgPicture.asset(
              SvgPath.logo,
              width: 100,
              height: 100,
            ),   
            17.0.verticalSpace,        
            Text(StringConsts.loginHeader
            ,style: TextStyle(
              fontFamily: 'dana',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
               color: Theme.of(context).colorScheme.onSurface,
            )
            ,),
            Text(StringConsts.loginSubTexts,
            style: TextStyle(
              fontFamily: 'dana',
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onSurface,
            )),
            92.0.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [              
              Text(StringConsts.loginUserNumber
            ,style: TextStyle(
              fontFamily: 'dana',
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
                  )),
                  20.0.horizontalSpace,
                  ]
            ),
             TextFieldWidget(),
             Spacer(),
             PrimaryButton( onTap: () {    
                   print("Login button tapped!");
                    },
                   text: StringConsts.loginButton, 
                    ),
             20.0.verticalSpace,
             RichTextWidget(),           
             30.0.verticalSpace,
             
          ],
        ),
      )
    );
  }
}


