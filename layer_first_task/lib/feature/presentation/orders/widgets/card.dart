import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 31.0,vertical: 10.0),
      child: Container(
        width: 366,
        height: 143,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // بخش آیتم‌ها
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 11.0),
                  child: Container(
                    width: 212,
                    height: 90,
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
                                  item.value,
                                  style: TextStyle(
                                    fontFamily: "dana",
                                    fontSize: 7,
                                    color: ColorPallet.lightColorScheme.onSurface,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                
                               const Spacer(),
                                Text(
                                  item.desc,
                                  style:const TextStyle(
                                    fontFamily: "dana",
                                    fontSize: 7,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Text(
                                  item.title,
                                  style: TextStyle(
                                    fontFamily: "dana",
                                    fontSize: 7,
                                    color: ColorPallet.lightColorScheme.onSurface,
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
                        )
                        
                        ),
                   
                   
                     const   Center(
                          child: Row(
                            children: [
                              Text('4',
                               style: TextStyle(
                                      fontFamily: "dana",
                                      fontSize: 7,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    ),
                              Text('محصول دیگر',
                               style: TextStyle(
                                      fontFamily: "dana",
                                      fontSize: 7,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    ),
                          
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // بخش اطلاعات مشتری
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(customerName,
                       style: TextStyle(
                                    fontFamily: "dana",
                                    fontSize: 13,
                                    color: ColorPallet.lightColorScheme.onSurface,
                                    fontWeight: FontWeight.w400,
                                  ),),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          SvgPicture.asset(
                            IconPath.calender,
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 8),
                          SvgPicture.asset(
                            IconPath.paperclip,
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [

                    Text(status),
                     SvgPicture.asset(
                            IconPath.ellipsered,
                            height: 24,
                            width: 24,
                          ),
                  ],
                ),
                Text(payment),
              ],
            ),
          ],
        ),
      ),
    );
  }
}