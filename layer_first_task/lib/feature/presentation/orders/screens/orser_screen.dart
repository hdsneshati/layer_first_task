import 'package:flutter/material.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/orders/widgets/card.dart';
import 'package:layer_first_task/feature/presentation/orders/widgets/filter_data_widget.dart';
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
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
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
              indent: 8, // فاصله از چپ
              endIndent: 8, // فاصله از راست
            ),
            10.0.verticalSpace,
            const FilterData(),
            CardOrderScreen(
              customerName: 'هاشم بیگ زاده',
              status: 'سفارش هنوز اماده نشده',
              payment: 'مبلغ پرداختی',
              items: [
                OrderItem(title: 'روپوش', desc: '۲۳ مدیوم', value: '۳'),
                OrderItem(title: 'شلوار', desc: '۲۳ مدیوم', value: '۲۰۰۰۰۰۰'),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
