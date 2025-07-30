import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/strings.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(StringConsts.loginUserNumber,
                style: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                )),
            20.0.horizontalSpace,
          ]),
          TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      IconPath.call,
                      width: 5,
                      height: 5,
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.5),
                    ),
                  ),

                  // آیکون سمت راست
                  hintText: "مثلا09024365997",
                  hintStyle: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.5), // کمرنگ‌تر
                    fontSize: 14, // اختیاری
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(0.5), // رنگ حاشیه
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ))),
        ],
      ),
    );
  }
}
