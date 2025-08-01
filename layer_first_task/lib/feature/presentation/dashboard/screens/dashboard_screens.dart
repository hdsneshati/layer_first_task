import 'package:flutter/material.dart';
import 'package:layer_first_task/feature/presentation/dashboard/widgets/buttons_dashboard.dart';
import 'package:layer_first_task/feature/presentation/dashboard/widgets/user_info_section.dart';
import 'package:layer_first_task/feature/presentation/dashboard/widgets/order_management.dart.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
     padding:const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            70.0.verticalSpace,
           const UserInfoSection(user: 'حدیث نشاطی',),
            Divider(
                             color: Theme.of(context).colorScheme.outline,

            ),
            15.0.verticalSpace,
           const   OrderManagement(),
           36.0.verticalSpace,
           const SubscriptionManagement(),
            48.0.verticalSpace,
           const  QuickActions(),
          ],
        ),
      ),
    );
  }
}

class SubscriptionManagement extends StatelessWidget {
  const SubscriptionManagement({
    super.key,
  });

  static const smsThreshold = 20;
  static const dayThreshold = 7;
  @override
  Widget build(BuildContext context) {
    return const Column();
    
    }
}
