import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/asset/svg_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:layer_first_task/feature/presentation/profile/screens/widgets/expandable_trust_widget.dart';
import 'package:layer_first_task/feature/presentation/profile/screens/widgets/profile_option_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
       appBar: AppBar(
        scrolledUnderElevation: 0,
        title:const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "مدیریت سیستم",
            style: TextStyle(
                fontFamily: "dana", fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        child: Column(
          children: [           
            20.0.verticalSpace,
           
            const ExpandableTrustWidget(),
          
          //  const SmsButton(),
           50.0.verticalSpace,
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    OptionTile(
                      onTap: () {},
                      text: 'مدیریت محصولات ',
                      icon: SvgPath.hanger,
                      w: 36.64,
                      h: 24,
                    ),
                    const Divider(
                      height: 1,
                      color: Color.fromARGB(255, 197, 196, 196),
                      indent: 2,
                      endIndent: 2,
                    ),
                    OptionTile(
                      onTap: () {},
                      text: 'مدیریت گروه مشتریان',
                      icon: IconPath.newtag,
                      w: 30,
                      h: 30,
                    ),
                    const Divider(
                      height: 1,
                      color:Color.fromARGB(255, 197, 196, 196),
                      indent: 2,
                      endIndent: 2,
                    ),
                    OptionTile(
                      onTap: () {},
                      text: 'کاربران سیستم',
                      icon: IconPath.profile2user,
                      w: 30,
                      h: 30,
                    ),
                  ],
                ),
              ),
            ),
           
            30.0.verticalSpace,
           
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    OptionTile(
                      onTap: () {},
                      text: 'آموزش کار با سیستم',
                      icon: IconPath.videoplay,
                      w: 32,
                      h: 32,
                    ),
                    const Divider(
                      height: 1,
                      color: Color.fromARGB(255, 197, 196, 196),
                      indent: 2,
                      endIndent: 2,
                    ),
                    OptionTile(
                      onTap: () {},
                      text: 'حریم خصوصی',
                      icon: IconPath.securitysafe,
                      w: 32,
                      h: 32,
                    ),
                  ],
                ),
              ),
            ),
           
            const Spacer(),
           
           // const CallInformationWidget(),
           
            20.0.verticalSpace,
          ],
        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {} ,
        shape: const CircleBorder(),
        child: SvgPicture.asset(
          IconPath.call,
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.surface, BlendMode.srcIn),
        ),
      ),
    );
  }
}

