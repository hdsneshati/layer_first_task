import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
//import 'package:size_config/size_config.dart';
//import 'package:size_config/size_config.dart';


class EmptyState extends StatelessWidget {
  const EmptyState(
      {super.key,
      required this.title,
      this.actionButton,
      required this.isError,
      this.action});

  static const animationDuration = 2;
  static const animationTranslate = 10.0;

  final Function? action;
  final String title;
  final Widget? actionButton;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => action?.call(),
            child: SvgPicture.asset(
              isError ? SvgPath.connection : SvgPath.noResult,
              width: 150.0,
              height: 150.0,
            )
                .animate(
                    onPlay: (controller) => controller.repeat(reverse: true))
                .moveY(
                    begin: -animationTranslate,
                    end: animationTranslate,
                    duration: animationDuration.seconds,
                    curve: Curves.easeInOut),
          ),
          Text(title),
          16.0.verticalSpace,
          actionButton ?? const SizedBox()
        ],
      ),
    );
  }
}
