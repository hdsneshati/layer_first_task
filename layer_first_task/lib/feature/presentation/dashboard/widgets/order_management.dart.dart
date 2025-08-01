import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/core/widgets/outlined_button.dart';
import 'package:layer_first_task/feature/presentation/dashboard/widgets/user_info_section.dart';

class OrderManagement extends StatelessWidget {
  const OrderManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 16, top: 28, bottom: 28),
        decoration: BoxDecoration(
          color: const Color(0x0319ce2e),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xffEDEDED),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomOutlinedButton( text: 'افزودن سفارش جدید',
                onTap: () {
                  
                }),
           const Spacer(),
            Text(
              'سفارشی ثبت نشده است ',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                fontSize: 12,
                fontFamily: 'dana',
                fontWeight: FontWeight.w600,
              ),
            ),
            8.0.horizontalSpace,
            SvgPicture.asset(
              IconPath.note,
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              width: 24,
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

