import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';

class FilterData extends StatelessWidget {
  const FilterData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Row(
          children: [
            Text(
              '۴۹ مورد یافت شد',
              style: TextStyle(
                fontFamily: "dana",
                fontSize: 13,
                color: ColorPallet.lightColorScheme.onSurface,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Row(
              children: [
                InkWell(
                  child: Container(
                    width: 68,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xffE8EBF1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'فیلتر   ',
                          style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        SvgPicture.asset(
                          width: 18,
                          height: 19,
                          IconPath.filter,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: 118,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xffE8EBF1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'سفارشات امروز   ',
                          style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        SvgPicture.asset(
                          width: 18,
                          height: 19,
                          IconPath.calender,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
