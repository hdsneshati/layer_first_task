import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class OrderItem {
  final String title;
  final String desc;
  final String value;
  OrderItem({required this.title, required this.desc, required this.value});
}

class CardOrderScreen extends StatelessWidget {
  final VoidCallback onPressed;
  final String customerName;
  final String status;
  final String payment;
  final List<OrderItem> items;

  const CardOrderScreen({
    super.key,
    required this.onPressed,
    required this.customerName,
    required this.status,
    required this.payment,
    required this.items,
  });

  /* showOrderBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // برای گسترش کامل صفحه
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return const BottunScrollerScreen();
      },
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
        // showOrderBottomSheet(context);

      
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        margin: const EdgeInsets.only(bottom: 14, left: 24, right: 20),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // contents
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(right: 0),
              child: Row(
                children: [
                  // بخش آیتم‌ها
                  SizedBox(
                    width: 180,
                    height: 80,
                    child: Column(
                      children: [
                        ...items.map((item) => Column(
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  margin: const EdgeInsets.only(
                                    left: 4,
                                    right: 8,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          item.value,
                                          style: const TextStyle(
                                              fontSize: 10, fontFamily: "dana"),
                                        ),
                                      ),
                                      const Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              item.desc,
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontFamily: "dana"),
                                            ),
                                          ),
                                          20.0.horizontalSpace,
                                          Text(
                                            item.title,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontFamily: "dana"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                8.0.verticalSpace,
                                const Divider(
                                  color: Color.fromARGB(255, 94, 93, 93),
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
                              'سفارش',
                              style: TextStyle(
                                fontSize: 7,
                              ),
                            ),
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

                  // بخش اطلاعات مشتری
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        customerName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            '۱۰/۱۰/۱۴۰۲:تاریخ',
                            style: TextStyle(
                                fontFamily: "dana",
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          SvgPicture.asset(
                            SvgPath.calendar,
                            height: 24,
                            width: 24,
                            colorFilter: const ColorFilter.mode(
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
                          Text(
                            'مطهری',
                            style: const TextStyle(
                                fontFamily: "dana",
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          SvgPicture.asset(
                            IconPath.tag,
                            height: 16,
                            width: 16,
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // bottom
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 4, top: 16, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        status,
                        style: const TextStyle(
                          fontFamily: "dana",
                          fontSize: 12,
                          color: Color(0xffE73838),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      2.0.horizontalSpace,
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 5,
                          width: 5,
                          margin: EdgeInsets.only(
                            left: 2,
                            right: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withAlpha(56),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text("مشاهده جزییات سفارش",
                      style: TextStyle(
                          fontFamily: "dana",
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
