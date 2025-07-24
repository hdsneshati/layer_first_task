import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';

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
           const  HeaderNameOrder(),
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             
              Text('تحویل حضوری در مرکز توزیع پوشاک - ۰۱۱'),
            Text('توضیحات   :'),
            ],
          ),
         const Spacer(),
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
          10.0.verticalSpace,
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
  List<Widget> rows = [];
  for (var item in items) {
    rows.add(
      Row(
        children: [
          Expanded(child: Text(item[0], style: textStyle)),
          Expanded(child: Text(item[1], style: textStyle)),
          Expanded(child: Text(item[2], style: textStyle)),
          Expanded(child: Text(item[3], style: textStyle)),
        ],
      ),
    );
    rows.add(const Divider(
       color: Colors.grey, // رنگ دلخواه
  thickness: 1,      // ضخامت خط
  height: 16,       // فاصله عمودی
    ));
  }
  return rows;
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

class HeaderNameOrder extends StatelessWidget {
  const HeaderNameOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
          Row(
            children: [
              SvgPicture.asset(
                IconPath.edit,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 8),
              SvgPicture.asset(
                IconPath.trash,
                height: 24,
                width: 24,
              ),
            ],
          ),
        const Spacer(),
     const    Text('مهدی علوی فر',
           style: TextStyle(
              fontFamily: "dana",
              fontSize: 20,
              color: Color(0xff71727A),
              fontWeight: FontWeight.w500,
            ),),
      ],
    );
  }
}