import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/orders/widgets/header.dart';
import 'package:layer_first_task/feature/presentation/orders/widgets/search_header.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          100.0.verticalSpace,
          const HeaderOrders(),
          81.0.verticalSpace,
          const SearchHeader(),
          const Divider(
            color: Color(0xff003A02), // رنگ خط
            thickness: 1, // ضخامت خط
            height: 20, // فاصله عمودی اطراف خط
            indent: 16, // فاصله از چپ
            endIndent: 16, // فاصله از راست
          ),
          Row(
            children: [
              Row(),
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
                          color: Theme.of(context).colorScheme.onSurface,
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
                          color: Theme.of(context).colorScheme.onSurface,
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
          ),
          const Card(),
        ],
      ),
    ));
  }
}
