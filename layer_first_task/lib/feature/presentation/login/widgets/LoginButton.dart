import 'package:flutter/material.dart';
import 'package:layer_first_task/config/asset/strings.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: () {
       
     },
     borderRadius: BorderRadius.circular(12),
     
     child: Container(
       width: 360, 
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
    child: Text(
                StringConsts.loginButton,
    style: TextStyle(
     fontFamily: 'dana',
     fontSize: 12.0,
     fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onPrimary,
      ),
                ),
     ),
     
    );
  }
}