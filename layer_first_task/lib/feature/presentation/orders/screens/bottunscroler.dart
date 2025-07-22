import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/theme/text_styles.dart';

class Scroll2 extends StatelessWidget {
  const Scroll2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    IconPath.trash,
                    width: 24,
                    height: 24,
                  ),
                  SvgPicture.asset(
                    IconPath.edit,
                    width: 24,
                    height: 24,
                    color: Color(0xff367CFF),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'مهدی علوی فر',
                style: TextStyle(
                  fontFamily: "dana",
                  fontSize: 20,
                  color: Color(0xff71727A),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'تاریخ وضعیت : ۴/۵/۱۴۰۴',
                    style: TextStyle(
                      fontFamily: "dana",
                      fontSize: 10,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SvgPicture.asset(
                    IconPath.calender,
                    width: 16,
                    height: 16,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'دسته بندی : دبستان حیدری',
                    style: TextStyle(
                      fontFamily: "dana",
                      fontSize: 10,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SvgPicture.asset(
                    IconPath.newtag,
                    width: 16,
                    height: 16,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'تلفن : ۰۹۳۹۱۵۵۶۸۶۲',
                    style: TextStyle(
                      fontFamily: "dana",
                      fontSize: 10,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SvgPicture.asset(
                    IconPath.call,
                    width: 16,
                    height: 16,
                  )
                ],
              )
            ],
          ),
          Container(
            width: 384,
            height: 28,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '  کد تحویل',
                  style: TextStyle(
                    fontFamily: "dana",
                    fontSize: 13,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '  ۴۳۰۴۰',
                  style: TextStyle(
                    fontFamily: "dana",
                    fontSize: 13,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 374,
              height: 113,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text('قیمت کلa',
                              style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text('قیمت واحد',
                              style: lightTextTheme.bodySmall)),
                      Expanded(
                          child:
                              Text('تعداد', style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text('نام کالا ',
                              style: lightTextTheme.bodySmall)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text('۱۱،۲۱۰،۰۰۰',
                              style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text('۱۲۰،۰۰۰د',
                              style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text('۴۳', style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text(' روپوش سایز ۳۰ - پسرانه ',
                              style: lightTextTheme.bodySmall)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text('۱۱،۲۱۰،۰۰۰',
                              style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text('۱۲۰،۰۰۰د',
                              style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text('۴۳', style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text(' روپوش سایز ۳۰ - پسرانه ',
                              style: lightTextTheme.bodySmall)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text('۱۱،۲۱۰،۰۰۰',
                              style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text('۱۲۰،۰۰۰د',
                              style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text('۴۳', style: lightTextTheme.bodySmall)),
                      Expanded(
                          child: Text(' روپوش سایز ۳۰ - پسرانه ',
                              style: lightTextTheme.bodySmall)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 374,
              height: 79,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
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
              ),
            ),
          ),
          Row(
            children: [
              Text('توضیحات   :'),
              Text('تحویل حضوری در مرکز توزیع پوشاک - ۰۱۱'),
            ],
          ),
          InkWell(
            onTap: (){},
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
              child: Center(
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
          ),
        ],
      ),
    );
  }
}
