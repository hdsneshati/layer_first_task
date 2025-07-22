import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';

class Card extends StatelessWidget {
  const Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    const Text('هاشم بیگ زاده'),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconPath.calender,
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      IconPath.paperclip,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                               Text(
                            'روپوش',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 7,
                              color:
                                  ColorPallet.lightColorScheme.onSurface,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                    Text(
                            '۲۳ مدیوم',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 7,
                              color:
                                  ColorPallet.lightColorScheme.onSurface,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                   
                            ],
                          ),
                        const  Spacer(),
                          Text(
                            '۳',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 7,
                              color:
                                  ColorPallet.lightColorScheme.onSurface,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                   
                        ],
                      ),
                
                      const Divider(
                        color: Color(0xffADADAD), // رنگ خط
                        thickness: 1, // ضخامت خط
                        height: 15, // فاصله عمودی اطراف خط
                        indent: 10, // فاصله از چپ
                        endIndent: 10, // فاصله از راست
                      ),
                       Row(
                        children: [
                          Row(
                            children: [
                               Text(
                            'شلوار',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 7,
                              color:
                                  ColorPallet.lightColorScheme.onSurface,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                    Text(
                            '۲۳ مدیوم',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 7,
                              color:
                                  ColorPallet.lightColorScheme.onSurface,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                   
                            ],
                          ),
                        const  Spacer(),
                          Text(
                            '۲۰۰۰۰۰۰',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 7,
                              color:
                                  ColorPallet.lightColorScheme.onSurface,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                   
                        ],
                      ),
                
                      const Divider(
                        color: Color(0xffADADAD), // رنگ خط
                        thickness: 1, // ضخامت خط
                        height: 15, // فاصله عمودی اطراف خط
                        indent: 10, // فاصله از چپ
                        endIndent: 10, // فاصله از راست
                      ),
                      Row(),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('سفارش هنوز اماده نشده'),
                Text(
                  'مبلغ پرداختی',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
