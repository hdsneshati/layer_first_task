import 'package:flutter/material.dart';
import 'package:layer_first_task/config/theme/color_pallet.dart';


TextTheme lightTextTheme = TextTheme(
    //! title
    titleLarge: TextStyle(
      fontFamily: "dana",
      fontSize: 18,
      color: ColorPallet.lightColorScheme.onSurface,
      fontWeight: FontWeight.w800,
    ),
    titleMedium: TextStyle(
      fontFamily: "dana",
      fontSize: 16,
      color: ColorPallet.lightColorScheme.onSurface,
      fontWeight: FontWeight.w700,
    ), 
    titleSmall: TextStyle(
      fontFamily: "dana",
      fontSize: 14,
      color: ColorPallet.lightColorScheme.onSurface,
      fontWeight: FontWeight.w500,
    ),

//! label
    labelLarge: TextStyle(
        fontFamily: "dana",
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: ColorPallet.lightColorScheme.onPrimary),





bodySmall: TextStyle(
        fontFamily: "dana",
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: ColorPallet.lightColorScheme.onSurface),






//! body
    bodyMedium: TextStyle(
        fontFamily: "dana",
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorPallet.lightColorScheme.surfaceBright));


 