import 'package:layer_first_task/config/asset/strings.dart';
import 'package:layer_first_task/feature/presentation/login/widgets/primary_bottun.dart';
import 'package:layer_first_task/feature/presentation/login/widgets/verification_massage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' ویرایش شماره',
                  style: TextStyle(
                    fontFamily: 'dana',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
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
            108.0.verticalSpace,
            //Pinput(
           //   length: 5,
           //   onCompleted: (pin) => print('Pin entered: $pin'),
          //  ),
            const VerificationMessage(),
            Text(
              ' دریافت نکردید؟ 02:30تا ارسال مجدد',
              style: TextStyle(
                fontFamily: 'dana',
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const Spacer(),
            PrimaryButton(
              onTap: () {},
              text: StringConsts.loginButtonVerify,
            ),
            30.0.verticalSpace,
          ],
        ),
      ),
    );
  }
}
