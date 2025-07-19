 import 'package:flutter/material.dart';


class Card extends StatelessWidget {
  String name ;
   Card({
    required this.name,
    super.key
    });

  @override
  Widget build(BuildContext context) {
     return  Container(
             child: Column(
              children: [
               
                Row(
                  children: [
                    Column(),
                    Container(),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'مبلغ پرداختی',
                    ),
                    Text('سفارش هنوز اماده نشده'),
                  ],
                ),
              ],
             ),

     );
  }
}

   