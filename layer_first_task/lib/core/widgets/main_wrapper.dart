import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key,this.startIndex});
  final int? startIndex;
  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  
  int index = 0;

  List<Widget> screens = [
    const DashboardScreen(),
    const OrdersScreen(),
    const AnalyticsScreen(),
    const ProfileScreen(),
  ];
  List<String> appBarTitles = [
    "داشبورد",
    "سفارشات",
    "امارگیری",
    "مدیریت",
  ];

   @override
  void initState() {
    if (widget.startIndex != null) {
      index = widget.startIndex!;
    }
    super.initState();
  } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        elevation: 10,
         shadowColor: Theme.of(context).colorScheme.surfaceBright,
         indicatorColor: Theme.of(context).colorScheme.inversePrimary,
         selectedIndex: index,
         onDestinationSelected: (value){
          setState(() {
            index = value;
          });
         },
         destinations: <Widget>[
          NavigationDestination(
            icon:SvgPicture.asset(
              IconPath.home,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onPrimaryContainer,
                  BlendMode.srcIn
                ),
            ) ,
            selectedIcon: SvgPicture.asset(
              IconPath.home,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            ),
            label: "داشبورد"),



            NavigationDestination(
            icon:SvgPicture.asset(
              IconPath.note,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onPrimaryContainer,
                  BlendMode.srcIn
                ),
            ) ,
            selectedIcon: SvgPicture.asset(
              IconPath.note,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            ),
            label:  'سفارشات'),



            NavigationDestination(
            icon:SvgPicture.asset(
              IconPath.chart,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onPrimaryContainer,
                  BlendMode.srcIn
                ),
            ) ,
            selectedIcon: SvgPicture.asset(
              IconPath.chart,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            ),
            label: 'امارگیری'),



            NavigationDestination(
            icon:SvgPicture.asset(
              IconPath.admin,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onPrimaryContainer,
                  BlendMode.srcIn
                ),
            ) ,
            selectedIcon: SvgPicture.asset(
              IconPath.admin,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary, BlendMode.srcIn),
            ),
            label: 'مدیریت')
         ],
      ),
      body: screens[index],
    );
  }
}

class ProfileScreen extends  StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class OrdersScreen  extends StatelessWidget {
  const OrdersScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}