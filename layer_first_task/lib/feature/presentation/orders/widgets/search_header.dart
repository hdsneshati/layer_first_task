import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class SearchHeader extends StatefulWidget {

  const SearchHeader({super.key});

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  int selectedIndex = 3;

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonheader(context,'جاری',0),
              5.0.horizontalSpace,
              buttonheader(context,'اماده',1),
              5.0.horizontalSpace,
              buttonheader(context,'تحویلی',2),
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

   InkWell buttonheader(BuildContext context, String label, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 56,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedIndex == index
                ? Theme.of(context).colorScheme.primary
                :const Color(0xffE8EBF1),
                
            width: 1,
          ),
          color: selectedIndex == index
                ? Theme.of(context).colorScheme.primaryContainer
                :Theme.of(context).colorScheme.secondaryContainer,
              
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.center,
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
