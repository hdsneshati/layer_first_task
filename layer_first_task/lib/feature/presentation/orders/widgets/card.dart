import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(customerName),
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
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ...items.map((item) => Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  item.title,
                                  style: TextStyle(
                                    fontFamily: "dana",
                                    fontSize: 7,
                                    color: ColorPallet.lightColorScheme.onSurface,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  item.desc,
                                  style: TextStyle(
                                    fontFamily: "dana",
                                    fontSize: 7,
                                    color: ColorPallet.lightColorScheme.onSurface,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  item.value,
                                  style: TextStyle(
                                    fontFamily: "dana",
                                    fontSize: 7,
                                    color: ColorPallet.lightColorScheme.onSurface,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0xffADADAD),
                              thickness: 1,
                              height: 15,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(status),
                Text(payment),
              ],
            ),
          ],
        ),
      ),
    );
  }
}