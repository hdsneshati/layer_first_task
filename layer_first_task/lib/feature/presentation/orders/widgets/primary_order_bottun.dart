import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';

class PrimaryOrderButton extends StatelessWidget {
  final VoidCallback onTap; // تابعی که هنگام کلیک اجرا می‌شود
  final String text; // متن دکمه

  const PrimaryOrderButton({
    super.key,
    required this.onTap,
    required this.text,
  }) ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 105,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.primaryFixed,
          ]),
        ),
        alignment: Alignment.center,
        child: Center(
          child: Row(
            children: [
              SvgPicture.asset(
                IconPath.add,
                width: 21,
                height: 21,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
