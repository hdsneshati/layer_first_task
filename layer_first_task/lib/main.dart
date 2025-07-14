import 'package:flutter/material.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';
import 'package:layer_first_task/core/widgets/main_wrapper.dart';
import 'package:layer_first_task/feature/presentation/login/screens/VerifyCodeScreen.dart';
import 'package:layer_first_task/feature/presentation/login/screens/login.screen.dart';
import 'package:layer_first_task/feature/presentation/orders/screens/orser_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       theme: ThemeData(
        colorScheme: ColorPallet.lightColorScheme,
        useMaterial3: true, // اگر از Material 3 استفاده می‌کنی
      ),
      home: const MainWrapper()
    );
  }
}

