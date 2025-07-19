import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/intro/widgets/animation_gradiant.dart';
import 'package:layer_first_task/feature/presentation/login/screens/login.screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // ⏳ بعد از 5 ثانیه، انتقال به صفحه جدید
    Future.delayed(const Duration(seconds: 115), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: [
        332.0.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SvgPicture.asset(
              IconPath.olgoo,
              width: 238,
              height: 77,
            ), 
            SvgPicture.asset(
              SvgPath.logo,
              width: 66,
              height: 70,
            ),
        
          ],
        ),
       const Spacer(),
        Text('نسخه ۳.۰.۱',
          style: TextStyle(
            fontFamily: 'dana',
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
     ),
      
      );
  }
}