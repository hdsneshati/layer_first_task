import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: 360,
     height: 48,
      child: TextField(                      
             keyboardType: TextInputType.number, 
             textAlign: TextAlign.right,                     
             decoration: InputDecoration(
                 suffixIcon: Icon(
                   Icons.person_outlined,
                   color: Theme.of(context)
                       .colorScheme
                       .onBackground
                       .withOpacity(0.5),
                 ), // آیکون سمت راست               
                 hintText: "مثلا09024365997",
                 hintStyle: TextStyle(
                   color: Theme.of(context)
                       .colorScheme
                       .onBackground
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
    );
  }
}

