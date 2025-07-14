import 'package:flutter/material.dart';

class VerificationMessage extends StatelessWidget {
  const VerificationMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 50,
            height: 50,
            child: TextField(
              maxLength: 1,
              style: TextStyle(
          
              ),
              decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
               onChanged: (value) {
      // اگر مقدار وارد شد، به فیلد بعدی بروید
      if (value.isNotEmpty && index < 4) {
        FocusScope.of(context).nextFocus();
      }
    },
            ),
          ),
        );
      }
      
      ),
    );
  }
}