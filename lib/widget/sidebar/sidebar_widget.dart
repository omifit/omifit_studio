import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/widget/imageicon/imgicon_widget.dart';

class SidebarWidget extends StatefulWidget {
  final int selectedIndex;
  final void Function(int index) onDestinationSelected;
  const SidebarWidget({
    super.key,
    required this.onDestinationSelected,
    required this.selectedIndex,
  });

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      backgroundColor: lightBlack,
      indicatorColor: primaryColor,
      selectedIndex: widget.selectedIndex,
      onDestinationSelected: (int index) {
        print(index);
        widget.onDestinationSelected(index);
      },
      children: [
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Image.asset(
            'assets/icons/logo.png',
          ),
        ),
        const SizedBox(height: 34),
        const NavigationDrawerDestination(
          icon: ImgIconWidget(
            path: "assets/icons/dashboard.png",
            size: 20,
          ),
          label: Text('Dashboard', style: TextStyle(color: kWhite)),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(CupertinoIcons.qrcode, color: kWhite),
          label: Text('Attendance', style: TextStyle(color: kWhite)),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(IconlyLight.user, color: kWhite),
          label: Text('Members', style: TextStyle(color: kWhite)),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(IconlyLight.work, color: kWhite),
          label: Text('Staffs', style: TextStyle(color: kWhite)),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(IconlyLight.video, color: kWhite),
          label: Text('Guidance', style: TextStyle(color: kWhite)),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(IconlyLight.document, color: kWhite),
          label: Text('Plans', style: TextStyle(color: kWhite)),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(
            IconlyLight.discount,
            color: kWhite,
          ),
          label: Text('Discount', style: TextStyle(color: kWhite)),
        ),
      ],
    );
  }
}
