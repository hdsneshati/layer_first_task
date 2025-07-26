import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class FilterData extends StatefulWidget {
  const FilterData({
    super.key,
  });

  @override
  State<FilterData> createState() => _FilterDataState();
}

class _FilterDataState extends State<FilterData> {
  int selectedIndex = 0; // 0: هیچکدام، 1: فیلتر، 2: سفارشات امروز

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          const Row(
            children: [
              Text(
                ' ۴۹ مورد یافت شد  ',
                style: TextStyle(
                  fontFamily: "dana",
                  fontSize: 13,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: Container(
                  height: 24,
                  decoration: BoxDecoration(
                    color: selectedIndex == 2
                        ? Theme.of(context).colorScheme.primary.withOpacity(0.2)
                        : const Color(0xffE8EBF1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (selectedIndex == 2)
                        Positioned(
                          top: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            child: Stack(children: [
                              SvgPicture.asset(
                                width: 10,
                                height: 10,
                                IconPath.ellips12,
                              ),
                              SvgPicture.asset(
                                width: 10,
                                height: 10,
                                IconPath.cancel,
                              ),
                            ]),
                          ),
                        ),
                      Text(
                        'سفارشات امروز   ',
                        style: TextStyle(
                          color: selectedIndex == 2
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      SvgPicture.asset(
                        width: 18,
                        height: 19,
                        SvgPath.calendar,
                        colorFilter: ColorFilter.mode(
                          selectedIndex == 2
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              8.0.horizontalSpace,
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Container(
                  height: 24,
                  decoration: BoxDecoration(
                    color: selectedIndex == 1
                        ? Theme.of(context).colorScheme.primary.withOpacity(0.2)
                        : const Color(0xffE8EBF1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (selectedIndex == 1)
                        Positioned(
                          top: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            child: Stack(children: [
                              SvgPicture.asset(
                                width: 10,
                                height: 10,
                                IconPath.ellips12,
                              ),
                              SvgPicture.asset(
                                width: 10,
                                height: 10,
                                IconPath.cancel,
                              ),
                            ]),
                          ),
                        ),
                      Text(
                        'فیلتر   ',
                        style: TextStyle(
                          color: selectedIndex == 1
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      SvgPicture.asset(
                        width: 18,
                        height: 19,
                        IconPath.filter,
                        colorFilter: ColorFilter.mode(
                          selectedIndex == 1
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
