import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/widget/imgIcon/imgicon_widget.dart';

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
          label: Text('Dashboard'),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(
            CupertinoIcons.qrcode,
            color: kWhite,
          ),
          label: Text('Attendance'),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(
            IconlyLight.user,
            color: kWhite,
          ),
          label: Text('Members'),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(IconlyLight.work),
          label: Text('Staffs'),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(
            IconlyLight.video,
          ),
          label: Text('Guidance'),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(IconlyLight.document),
          label: Text('Plans'),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(IconlyLight.discount),
          label: Text('Discount'),
        ),
        const SizedBox(height: 4),
        const NavigationDrawerDestination(
          icon: Icon(IconlyLight.add_user),
          label: Text('Leads'),
        ),
      ],
    );
  }
}
