import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({super.key,required this.user});
 final String user;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          user,
          style:const TextStyle(
            fontFamily: "dana",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      const  Text(
          '                  مالک ',
         style: TextStyle(
            fontFamily: "dana",
            fontSize: 14,
            color:Colors.grey,
            fontWeight: FontWeight.w400,
          ),),
      ],
    ),
    12.0.horizontalSpace,
        CircleAvatar(
          radius: 26.0,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: SvgPicture.asset(
            IconPath.profile,
            colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            width: 26.0,
            height: 26.0,
          ),
        ),
      ],
    );
  }
}
