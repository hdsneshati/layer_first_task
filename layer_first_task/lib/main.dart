import 'package:flutter/material.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';
import 'package:layer_first_task/feature/presentation/authentication/screens/login_screen.dart';
import 'package:layer_first_task/feature/presentation/authentication/screens/otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       theme: ThemeData(
        colorScheme: ColorPallet.lightColorScheme,
        useMaterial3: true, 
      ),
      debugShowCheckedModeBanner: false,
      home: const VerifyCodeScreen(),
    );
  }
}

