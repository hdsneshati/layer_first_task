import 'package:flutter/material.dart';

class BottunScrollerScreen extends StatelessWidget {
  const BottunScrollerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ... بخش اطلاعات کاربر و آیکون‌ها ...
          // ... بخش کد تحویل ...
          // جدول کالاها
          Container(
            width: 384,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                _buildTableHeader(context),
                ..._buildOrderRows(context),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // بخش جمع مبالغ
          _buildAmountSummary(context),
          const SizedBox(height: 8),
          // توضیحات
          const Row(
            children: [
              Text('توضیحات   :'),
              Expanded(child: Text('تحویل حضوری در مرکز توزیع پوشاک - ۰۱۱')),
            ],
          ),
          const SizedBox(height: 8),
          // دکمه
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 382,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.secondaryFixed,
                ]),
              ),
              alignment: Alignment.center,
              child: Text(
                'تحویل گرفت',
                style: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  


  Widget _buildTableHeader(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodySmall;
    return Row(
      children: [
        Expanded(child: Text('قیمت کل', style: textStyle)),
        Expanded(child: Text('قیمت واحد', style: textStyle)),
        Expanded(child: Text('تعداد', style: textStyle)),
        Expanded(child: Text('نام کالا', style: textStyle)),
      ],
    );
  }

  List<Widget> _buildOrderRows(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodySmall;
    List<List<String>> items = [
      ['۱۱،۲۱۰،۰۰۰', '۱۲۰،۰۰۰د', '۴۳', 'روپوش سایز ۳۰ - پسرانه'],
      ['۱۱،۲۱۰،۰۰۰', '۱۲۰،۰۰۰د', '۴۳', 'روپوش سایز ۳۰ - پسرانه'],
      ['۱۱،۲۱۰،۰۰۰', '۱۲۰،۰۰۰د', '۴۳', 'روپوش سایز ۳۰ - پسرانه'],
    ];
    return items.map((item) {
      return Row(
        children: [
          Expanded(child: Text(item[0], style: textStyle)),
          Expanded(child: Text(item[1], style: textStyle)),
          Expanded(child: Text(item[2], style: textStyle)),
          Expanded(child: Text(item[3], style: textStyle)),
        ],
      );
    }).toList();
  }

  Widget _buildAmountSummary(BuildContext context) {
    return Container(
      width: 374,
      height: 79,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('۳۳،۶۳۰،۰۰۰'),
              Text('مبلغ کل‌'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('۰'),
              Text('پیش پرداخت '),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('۳۳،۶۳۰،۰۰۰'),
              Text('مبلغ قابل پرداخت :  '),
            ],
          ),
        ],
      ),
    );
  }
}