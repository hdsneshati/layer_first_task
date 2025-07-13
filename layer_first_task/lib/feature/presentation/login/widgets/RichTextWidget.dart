import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
     text: TextSpan(
       style: DefaultTextStyle.of(context).style.copyWith(fontSize: 16),
          children: [
          TextSpan(text: ' با ثبت نام و ورود به الگو',  style: TextStyle(
     fontFamily: 'dana',
     fontSize: 12.0,
     fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.onSurface,
      ),),
          TextSpan(text: 'قوانین و مقررات حریم خصوصی ', style: TextStyle(
     fontFamily: 'dana',
     fontSize: 12.0,
     fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.primary,
      ),),
          TextSpan(text: ' الگو را میپذیرید ',  style: TextStyle(
     fontFamily: 'dana',
     fontSize: 12.0,
     fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.onSurface,
      ),),
         
              ],
            ),
        );
  }
}