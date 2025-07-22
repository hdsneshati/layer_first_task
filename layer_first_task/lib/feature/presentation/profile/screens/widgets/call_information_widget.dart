import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/profile/screens/profile_screen.dart';

class CallInformationWidget extends StatelessWidget {
  const CallInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        16.0.horizontalSpace,
        InkWell(
          child: Container(
            width: 148,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color:Theme.of(context).colorScheme.secondary, // 🎨 رنگ خط دور
                width: 1, // ضخامت خط
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  width: 20,
                  height: 20,
                  IconPath.wrraper,
                ),
                Text(
                  'خروجی اطلاعات',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
         child:  CircleAvatar(
            radius: 24,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: SvgPicture.asset(
              IconPath.call,
              color:Theme.of(context).colorScheme.onSecondary,

            ),
          ),
        ),
        16.0.horizontalSpace,
      ],
    );
  }
}
