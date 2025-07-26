import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';

class OrderItem {
  final String title;
  final String desc;
  final String value;
  OrderItem({required this.title, required this.desc, required this.value});
}

class CardOrderScreen extends StatelessWidget {
  final String customerName;
  final String status;
  final String payment;
  final List<OrderItem> items;

  const CardOrderScreen({
    super.key,
    required this.customerName,
    required this.status,
    required this.payment,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31.0, vertical: 10.0),
      child: Container(
        width: 420,
        height: 143,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            5.0.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                // بخش آیتم‌ها
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 20.0),
                  child: Container(
                    width: 185,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          ...items.map((item) => Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        item.value,
                                        style: TextStyle(
                                          fontFamily: "dana",
                                          fontSize: 7,
                                          color: ColorPallet
                                              .lightColorScheme.onSurface,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        item.desc,
                                        style: const TextStyle(
                                          fontFamily: "dana",
                                          fontSize: 7,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      20.0.horizontalSpace,
                                      Text(
                                        item.title,
                                        style: TextStyle(
                                          fontFamily: "dana",
                                          fontSize: 7,
                                          color: ColorPallet
                                              .lightColorScheme.onSurface,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  8.0.verticalSpace,
                                  const Divider(
                                    color: Color(0xffADADAD),
                                    thickness: 1,
                                    height: 5,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  8.0.verticalSpace
                                ],
                              )),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             
                              Text(
                                'محصول دیگر',
                                style: TextStyle(
                                  fontFamily: "dana",
                                  fontSize: 7,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                               Text(
                                '4',
                                style: TextStyle(
                                  fontFamily: "dana",
                                  fontSize: 7,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                // بخش اطلاعات مشتری
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            customerName,
                            style:const TextStyle(
                              fontFamily: "dana",
                              fontSize: 13,
                              color: Color(0xff525252),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         const Text(
                            '۱۰/۱۰/۱۴۰۲:تاریخ',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 10,
                              color: Color(0xff525252),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SvgPicture.asset(
                            SvgPath.calendar,
                            height: 24,
                            width: 24,
                             colorFilter:const ColorFilter.mode(
                               Color(0xff525252),
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                      8.0.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            IconPath.paperclip,
                            height: 24,
                            width: 24,
                            colorFilter:const ColorFilter.mode(
                               Color(0xff525252),
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xffC5C6CC),
              thickness: 1,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            7.0.verticalSpace,
            // بخش وضعیت و مبلغ پرداختی
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      status,
                      style: const TextStyle(
                        fontFamily: "dana",
                        fontSize: 7,
                        color: Color(0xffE73838),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    2.0.horizontalSpace,
                    SvgPicture.asset(
                      IconPath.ellipsered,
                      height: 8,
                      width: 8,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'تومان',
                      style: TextStyle(
                        fontFamily: "dana",
                        fontSize: 5,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      payment,
                      style: const TextStyle(
                        fontFamily: "dana",
                        fontSize: 11,
                        color: Color(0xff525252),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'مبلغ پرداختی ',
                      style: TextStyle(
                        fontFamily: "dana",
                        fontSize: 11,
                        color: Color(0xff2F3036),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
