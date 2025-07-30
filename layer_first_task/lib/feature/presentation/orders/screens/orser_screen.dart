import 'package:flutter/material.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/orders/screens/bottunscroler.dart';
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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => const BottunScrollerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                color: Color.fromARGB(255, 189, 197, 189), // رنگ خط
                thickness: 1, // ضخامت خط
                height: 10, // فاصله عمودی اطراف خط
                indent: 8, // فاصله از چپ
                endIndent: 8, // فاصله از راست
              ),
              150.0.verticalSpace,
              //  const FilterData(),
             // CardOrderScreen(
             //   customerName: 'هاشم بیگ زاده',
             //   status: 'سفارش هنوز اماده نشده',
              //  payment: '49000 ',
              //  items: [
              //    OrderItem(title: 'روپوش', desc: '۲۳ مدیوم', value: '۳'),
              //    OrderItem(title: 'شلوار', desc: '۲۳ مدیوم', value: '۲۰۰۰۰۰۰'),
               // ],
             // ),
           Text(
            "سفارش یافت نشد",
            style: TextStyle( fontFamily: 'dana',
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.surfaceBright,),
          ),
           
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Theme.of(context).colorScheme.primaryFixed,
          onPressed: () {
            // context.pushNamed("/addOrders");
            _showCustomBottomSheet;
          },
          label:  Text(
            "سفارش جدید",
            style: TextStyle( fontFamily: 'dana',
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,),
          )),
    );
  }
}
