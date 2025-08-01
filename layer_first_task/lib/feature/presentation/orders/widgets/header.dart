import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/strings.dart';
import 'package:layer_first_task/config/theme/text_styles.dart';

class HeaderOrders extends StatelessWidget {
  const HeaderOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            IconPath.search,
            width: 24,
            height: 24,
          ),
         // PrimaryOrderButton(onTap: () {}, text: StringConsts.newOrder),
          const Spacer(),
          Text(
            StringConsts.orderTitle,
            style: lightTextTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
