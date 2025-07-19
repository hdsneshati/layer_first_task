import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';

class SearchHeader extends StatefulWidget {

  const SearchHeader({super.key});

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  bool isSelected = false;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonheader(context,'جاری'),
              buttonheader(context,'اماده'),
              buttonheader(context,'تحویلی'),
            ],
          ),
          Row(
            children: [
              InkWell(
                child: Container(
                  width: 171,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'انتخاب دسته بندی ',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      SvgPicture.asset(
                        width: 20,
                        height: 20,
                        IconPath.tag,
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

  InkWell buttonheader(BuildContext context,String label) {
    return InkWell(
              onTap: (){
                isSelected = true;
              },
              child: Container(
                width: 56,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                     color: isSelected ? Theme.of(context)
                        .colorScheme
                        .primary  : Theme.of(context)
                        .colorScheme
                        .secondary, // 🎨 رنگ خط دور
                    width: 1, // ضخامت خط
                  ),
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.center, // موقعیت‌دهی متن
                 // widthFactor: 1.0, // کنترل عرض
                //  heightFactor: 1.0, // کنترل ارتفاع
                  child: Text(
                    label,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            );
  }
}
