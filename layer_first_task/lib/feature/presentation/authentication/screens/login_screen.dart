import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/strings.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/authentication/screens/otp_screen.dart';
import 'package:layer_first_task/feature/presentation/authentication/widgets/primary_bottun.dart';
import 'package:layer_first_task/feature/presentation/authentication/widgets/RichTextWidget.dart';
import 'package:layer_first_task/feature/presentation/authentication/widgets/TextFieldWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          100.0.verticalSpace,
          SvgPicture.asset(
            SvgPath.logo,
            width: 100,
            height: 100,
          ),
          17.0.verticalSpace,
          Text(
            StringConsts.loginHeader,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            StringConsts.loginSubTexts,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          92.0.verticalSpace,
          PrimaryTextBox(
              isNumbricKeyboard: true,
              controller: phoneNumberController,
              iconPath: IconPath.call,
              title: " شماره تلفن خود را وارد کنید",
              hint: "*********09"),
          const Spacer(),
          PrimaryButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VerifyCodeScreen()),
              );
            },
            text: StringConsts.loginButton,
          ),
          20.0.verticalSpace,
          const RichTextWidget(),
          30.0.verticalSpace,
        ],
      ),
    ));
  }
}
