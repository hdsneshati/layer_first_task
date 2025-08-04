import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class BottunScrollerScreen extends StatelessWidget {
  const BottunScrollerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //badge
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 55,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceBright,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          //
          const HeaderNameOrder(),
          16.0.verticalSpace,
          _buildInformation(context),

          _buildcode(context),
          16.0.verticalSpace,
          _buildTableHeader(context),
          ..._buildOrderRows(context),
          const SizedBox(height: 8),
          // بخش جمع مبالغ
          _buildAmountSummary(context),
          const SizedBox(height: 8),
          // توضیحات
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('تحویل حضوری در مرکز توزیع پوشاک ',
                  style: Theme.of(context).textTheme.bodySmall),
              Text(':توضیحات ', style: Theme.of(context).textTheme.bodySmall),
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
        ],
      ),
    );
  }

  Widget _buildTableHeader(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodySmall;
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Text('قیمت کل', style: textStyle)),
            Expanded(child: Text('قیمت واحد', style: textStyle)),
            Expanded(child: Text('تعداد', style: textStyle)),
            Expanded(child: Text('نام کالا', style: textStyle)),
          ],
        ),
        const Divider(
          color: Color.fromARGB(255, 155, 153, 153), // رنگ دلخواه
          thickness: 1, // ضخامت خط
          height: 16, // فاصله عمودی
        )
      ],
    );
  }

  List<Widget> _buildOrderRows(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodySmall;
    List<List<String>> items = [
      ['۱۱،۲۱۰،۰۰۰', '۱۲۰،۰۰۰د', '۴۳', 'روپوش سایز ۳۰ - '],
      ['۱۱،۲۱۰،۰۰۰', '۱۲۰،۰۰۰د', '۴۳', 'روپوش سایز ۳۰ - '],
      ['۱۱،۲۱۰،۰۰۰', '۱۲۰،۰۰۰د', '۴۳', 'روپوش سایز ۳۰ - '],
    ];
    List<Widget> rows = [];
    for (var item in items) {
      rows.add(const Divider(
        color: Color.fromARGB(255, 205, 202, 202), // رنگ دلخواه
        thickness: 1, // ضخامت خط
        height: 16, // فاصله عمودی
      ));
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
    }
    return rows;
  }

  Widget _buildAmountSummary(BuildContext context) {
    return Container(
      width: 374,
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
          Divider(
            color: Colors.grey, // رنگ دلخواه
            thickness: 1, // ضخامت خط
            height: 16, // فاصله عمودی
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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

Widget _buildInformation(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        const Text(
          'تاریخ وضعیت : ۴/۵/۱۴۰۴  ',
          style: TextStyle(
            fontFamily: "dana",
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        4.0.horizontalSpace,
        SvgPicture.asset(
          IconPath.date,
          height: 20,
          width: 20,
          colorFilter: const ColorFilter.mode(
            Color(0xff000000),
            BlendMode.srcIn,
          ),
        ),
      ]),
      4.0.verticalSpace,
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        const Text(
          'گروه مشتری  : دبستان حیدری ',
          style: TextStyle(
            fontFamily: "dana",
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        4.0.horizontalSpace,
        SvgPicture.asset(
          IconPath.tag,
          height: 20,
          width: 20,
          colorFilter: const ColorFilter.mode(
            Color(0xff000000),
            BlendMode.srcIn,
          ),
        ),
      ]),
      4.0.verticalSpace,
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        InkWell(
          child: SizedBox(
            height: 24,
            child: Center(
              child: Text(
                '۰۹۳۹۱۵۵۶۸۶۲',
                style: TextStyle(
                  fontFamily: "dana",
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          onTap: () async {
            // var customerPhone;
            //  await Clipboard.setData(
            //         ClipboardData(text: customerPhone))
            //     .then((value) => SnackBars.successSnackBar(
            //         context, "شماره تلفن کپی شد", ""));
            // copied successfully
          },
        ),
        const Text(
          ': تلفن  ',
          style: TextStyle(
            fontFamily: "dana",
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        4.0.horizontalSpace,
        SvgPicture.asset(
          IconPath.call,
          height: 20,
          width: 20,
          colorFilter: const ColorFilter.mode(
            Color(0xff000000),
            BlendMode.srcIn,
          ),
        ),
      ]),
    ],
  );
}

Widget _buildcode(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      height: 30,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child:const Center(
        child: Text(
          '۴۳۰۴۰ ' 'کد تحویل',
          style: TextStyle(
            fontFamily: "dana",
            fontSize: 13,
            color: Color(0xff000000),
            fontWeight: FontWeight.w400,
          ),
        ),
      ));
}

class HeaderNameOrder extends StatelessWidget {
  const HeaderNameOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                IconPath.trash,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 8),
              SvgPicture.asset(
                IconPath.edit,
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.secondary,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Text(
            'مهدی علوی فر',
            style: TextStyle(
              fontFamily: "dana",
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
