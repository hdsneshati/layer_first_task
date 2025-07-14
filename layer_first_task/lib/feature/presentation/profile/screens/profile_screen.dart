
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/img_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';
import 'package:layer_first_task/config/theme/text_styles.dart';

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
          Row(children: [
            SvgPicture.asset(
              IconPath.arrow,
              width: 40,
              height: 40,
              color: ColorPallet.lightColorScheme.onSurface,
              ),
            SvgPicture.asset(
              ImgPath.calendar,
            ),
         ] )
        ],
      ),
    );
  }
}