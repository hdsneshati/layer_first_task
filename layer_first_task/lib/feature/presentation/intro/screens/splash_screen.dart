import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/authentication/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 15), () {
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
        
        Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                   // child: DelayedWidget(
                      //  animationDuration: Durations.long2,
                      //  animation: DelayedAnimations.SLIDE_FROM_RIGHT,
                        child: SvgPicture.asset(
                          SvgPath.logo,
                          width: 100,
                          height: 100,
                        )
                        ),
               //   ),
                 // DelayedWidget(
                  //  delayDuration: const Duration(milliseconds: 700),
                   // animationDuration: Durations.long2,
                  //  animation: DelayedAnimations.SLIDE_FROM_RIGHT,
                  //  child: Shimmer.fromColors(
                  //    period: Durations.extralong4,
                   //   direction: ShimmerDirection.rtl,
                   //   baseColor: Theme.of(context).colorScheme.onSurface,
                   //   highlightColor: Theme.of(context).colorScheme.surfaceTint,
                     // child:
                       const Text(
                        "الـگو",
                        style: TextStyle(
                          fontSize: 100,
                          height: 7,
                          fontFamily: "dana",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  //  ),
                 // ),
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