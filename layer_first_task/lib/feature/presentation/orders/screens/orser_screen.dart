import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/strings.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/config/theme/text_styles.dart';
import 'package:layer_first_task/feature/presentation/login/screens/login.screen.dart';
import 'package:layer_first_task/feature/presentation/orders/widgets/primary_order_bottun.dart';

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
            Padding(
              padding: const EdgeInsets.only(left: 47,right: 47),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SvgPicture.asset(
                IconPath.search,
                width: 24,
                height: 24,
              ), 
              PrimaryOrderButton(onTap: (){}, text:StringConsts.newOrder ),
              Spacer(),
                Text(StringConsts.orderTitle,
                style: lightTextTheme.titleMedium,
                ),
               
              ],),
            )
          ],
         ),
       )
    );
  }
}