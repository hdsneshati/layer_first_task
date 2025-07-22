import 'package:flutter/material.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/orders/screens/order.dart';
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
          const FilterData(),
          ElevatedButton(
          onPressed: () => MySimpleBottomSheet.show(context),
          child: const Text("نمایش"),
        ),
      
        ],
      ),
    ));
  }
}

