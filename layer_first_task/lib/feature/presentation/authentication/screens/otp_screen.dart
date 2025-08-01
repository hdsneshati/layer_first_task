import 'package:layer_first_task/config/asset/strings.dart';
import 'package:layer_first_task/core/widgets/main_wrapper.dart';
import 'package:layer_first_task/feature/presentation/authentication/widgets/primary_bottun.dart';
import 'package:layer_first_task/feature/presentation/authentication/widgets/verification_massage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:pinput/pinput.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  TextEditingController pinController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            127.0.verticalSpace,
            SvgPicture.asset(
              IconPath.massagetext,
              width: 100,
              height: 100,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
            Text(
              'کد به شماره 09024365997 ارسال شد',
              style: TextStyle(
                fontFamily: 'dana',
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' ویرایش شماره',
                    style: TextStyle(
                      fontFamily: 'dana',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SvgPicture.asset(
                    IconPath.edit,
                    width: 24,
                    height: 24,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
            50.0.verticalSpace,
                    Directionality(
                    textDirection: TextDirection.ltr,
                    child: Pinput(
                      controller: pinController,
                      key: globalKey,
                      onSubmitted: (value) {
                        },
                      pinAnimationType: PinAnimationType.slide,
                      length: 5,
                      errorPinTheme: PinTheme(
                          textStyle: TextStyle(
                              fontFamily: "dana",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.error),
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Theme.of(context).colorScheme.error))),
                      errorTextStyle: TextStyle(
                          fontFamily: "dana",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.error),
                      defaultPinTheme: PinTheme(
                          textStyle: TextStyle(
                              fontFamily: "dana",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer),
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.outline))),
                    ),
                  ),
          
           // const VerificationMessage(),
            Text(
              ' دریافت نکردید؟ 02:30تا ارسال مجدد',
              style: TextStyle(
                fontFamily: 'dana',
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.surfaceBright,
              ),
            ),
            const Spacer(),
            PrimaryButton(
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainWrapper()),
              );
            },
              text: StringConsts.loginButtonVerify,
            ),
            30.0.verticalSpace,
          ],
        ),
      ),
    );
  }
}
