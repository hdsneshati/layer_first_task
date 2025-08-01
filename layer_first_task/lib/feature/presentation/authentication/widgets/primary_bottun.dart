import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
   final VoidCallback onTap; // تابعی که هنگام کلیک اجرا می‌شود
  final String text; // متن دکمه

  const PrimaryButton({
    super. key,
    required this.onTap,
    required this.text,
  }) ;


  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: onTap,
     borderRadius: BorderRadius.circular(12),
     
     child: Container(
       width: 300, 
       height: 48, 
       
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(12),
        gradient:  LinearGradient(
       colors: [
         Theme.of(context).colorScheme.primary,
         Theme.of(context).colorScheme.primaryFixed,
         ]
      ),
      
       
                ),
    alignment: Alignment.center,
    child: Center(
      child: Text(
        text,
       style: TextStyle(
       fontFamily: 'dana',
       fontSize: 12.0,
       fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onPrimary,
        ),
                  ),
    ),
     ),
     
    );
  }
}