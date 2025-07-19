import 'package:flutter/material.dart';
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
       body:Center(
         child: Column(
          children: [
            100.0.verticalSpace,
          const  HeaderOrders(),
             81.0.verticalSpace,
         const SearchHeader(),
        
          const Card(),
          ],
         ),
       )
    );
  }
}

