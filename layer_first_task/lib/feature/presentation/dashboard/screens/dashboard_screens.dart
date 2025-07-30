import 'package:flutter/material.dart';
import 'package:layer_first_task/feature/presentation/dashboard/widgets/buttons_dashboard.dart';
import 'package:layer_first_task/feature/presentation/dashboard/widgets/header_dashboeard.dart';
import 'package:layer_first_task/feature/presentation/dashboard/widgets/orders_dashboard.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          70.0.verticalSpace,
         const HeaderDashboeard(),
         const  Divider(
            color: Color.fromARGB(255, 217, 214, 214), // رنگ خط
            thickness: 1, // ضخامت خط
            height: 20, // فاصله عمودی اطراف خط
            indent: 16, // فاصله از چپ
            endIndent: 16, // فاصله از راست
          ),
          15.0.verticalSpace,
         const   OrdersDashboard(),
          60.0.verticalSpace,
         const  ButtonsDashboard(),
        ],
      ),
    );
  }
}
