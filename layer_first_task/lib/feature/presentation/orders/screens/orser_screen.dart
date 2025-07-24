import 'package:flutter/material.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/orders/screens/bottunscroler.dart';
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
  void _showCustomBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.8, // 80% از ارتفاع صفحه
          minChildSize: 0.5,
          maxChildSize: 0.95,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: const BottunScrollerScreen(),
            );
          },
        );
      },
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
       SingleChildScrollView(
       child: Padding(
      padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            85.0.verticalSpace,
            const HeaderOrders(),
            60.0.verticalSpace,
            const SearchHeader(),
         8.0.verticalSpace,
           const Divider(
              color: Color(0xff003A02), // رنگ خط
              thickness: 1, // ضخامت خط
              height: 10, // فاصله عمودی اطراف خط
              indent: 8, // فاصله از چپ
              endIndent: 8, // فاصله از راست
            ),
            5.0.verticalSpace,
            const FilterData(),
            CardOrderScreen(
              customerName: 'هاشم بیگ زاده',
              status: 'سفارش هنوز اماده نشده',
              payment: '49000 ',
              items: [
                OrderItem(title: 'روپوش', desc: '۲۳ مدیوم', value: '۳'),
                OrderItem(title: 'شلوار', desc: '۲۳ مدیوم', value: '۲۰۰۰۰۰۰'),
              ],
            ),
             const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showCustomBottomSheet,
              child: const Text('نمایش جزئیات سفارش'),
            ),
        
          
          ],
        ),
      ),
    )
    );
  }
}
