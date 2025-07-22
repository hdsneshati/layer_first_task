import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';

class SimpleBottomSheetExample extends StatelessWidget {
  const SimpleBottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('مثال با کلاس جدا')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => MySimpleBottomSheet.show(context),
              child: const Text("نمایش bottom sheet"),
            ),
          ),
        ],
      ),
    );
  }
}

class MySimpleBottomSheet {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const BottomSheetContent(),
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      minChildSize: 0.2,
      maxChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: ListView(
            controller:
                scrollController, // فقط در اینجا scroll controller استفاده بشه
            children: [
              Column(
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
                            'data',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SvgPicture.asset(
                            IconPath.admin,
                            width: 16,
                            height: 16,
                          )
                        ],
                      ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'data',
                            style: TextStyle(
                              fontFamily: "dana",
                              fontSize: 10,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SvgPicture.asset(
                            IconPath.admin,
                            width: 16,
                            height: 16,
                          )
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Text(
                      'سلام :)',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
