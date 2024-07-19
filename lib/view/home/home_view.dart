import 'package:animations/animations.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/attendance/attendance_view.dart';
import 'package:omifit/view/home/dashboard/dashboard_view.dart';
import 'package:omifit/view/home/discount/discount_view.dart';
import 'package:omifit/view/home/guidance/guidance/guidance_view.dart';
import 'package:omifit/view/home/home_view_model.dart';
import 'package:omifit/view/home/lead/lead_view.dart';
import 'package:omifit/view/home/member/member/member_view.dart';
import 'package:omifit/view/home/plan/plan_view.dart';
import 'package:omifit/view/home/staff/staff/staff_view.dart';
import 'package:omifit/widget/appbar/appbar_widget.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:omifit/widget/sidebar/sidebar_widget.dart';
import 'package:pull_down_button/pull_down_button.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});
  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  List<Widget> pages = [
    const DashboardView(),
    const AttendanceView(),
    const MemberView(),
    const StaffView(),
    const GuidanceView(),
    const PlanView(),
    const DiscountView(),
    const LeadView(),
  ];
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      key: homeViewModel.key,
      appBar: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? AppBar(
              backgroundColor: darkBlack,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: kWhite,
                ),
                onPressed: () => homeViewModel.openDrawer(),
              ),
              title: Text(switchCase(homeViewModel.selectedIndex),
                  style: const TextStyle(color: kWhite, fontSize: 18)),
              actions: [
                IconButton(
                  icon: const Icon(
                    CupertinoIcons.search,
                    color: kWhite,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                PullDownButton(
                  routeTheme: PullDownMenuRouteTheme(
                    backgroundColor: const Color.fromARGB(8, 52, 52, 52),
                    borderRadius: BorderRadius.circular(10),
                    shadow: BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                    ),
                  ),
                  itemBuilder: (context) => [
                    PullDownMenuHeader(
                      leading: const ProfileImg(
                          url: 'https://i.imgur.com/UnWWlu3.png'),
                      title: 'Ayush Maji',
                      subtitle: 'Tap to view',
                      icon: IconlyLight.arrow_right_2,
                      onTap: () {
                        context.pushNamed(AppRoute.profile.name,
                            pathParameters: {'isBack': 'true'});
                      },
                      itemTheme: const PullDownMenuItemTheme(
                        subtitleStyle: TextStyle(
                          color: kGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PullDownMenuItem.selectable(
                      onTap: () {
                        context.pushNamed(AppRoute.organizationDetails.name);
                      },
                      title: 'Sweat n Smile',
                      subtitle: 'Admin',
                      icon: IconlyLight.arrow_right_2,
                      itemTheme: const PullDownMenuItemTheme(
                        textStyle: TextStyle(
                          color: kWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        subtitleStyle: TextStyle(
                          color: primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    PullDownMenuItem(
                      onTap: () {
                        context.pushNamed(AppRoute.splash.name);
                      },
                      title: 'Logout',
                      isDestructive: true,
                      icon: IconlyLight.logout,
                      itemTheme: const PullDownMenuItemTheme(
                        textStyle: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                  buttonBuilder: (context, showMenu) => BouncingWidget(
                    onPressed: showMenu,
                    child: const ProfileImg(
                        url: "https://i.imgur.com/UnWWlu3.png"),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            )
          : PreferredSize(
              preferredSize: const Size.fromHeight(70.0),
              child: AppbarWidget(
                tittle: switchCase(homeViewModel.selectedIndex),
              ),
            ),
      drawer: SidebarWidget(
        onDestinationSelected: (index) =>
            homeViewModel.onDestinationSelected(index, context),
        selectedIndex: homeViewModel.selectedIndex,
      ),
      body: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation, secondaryAnimation) {
          return FadeThroughTransition(
            fillColor: lightBlack,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: pages[homeViewModel.selectedIndex],
      ),
    );
  }
}

String switchCase(int index) {
  switch (index) {
    case 0:
      return 'Dashboard';
    case 1:
      return 'Attendance';
    case 2:
      return 'Member';
    case 3:
      return 'Staff';
    case 4:
      return 'Guidance';
    case 5:
      return 'Plan';
    case 6:
      return 'Discount';
    case 7:
      return 'Lead';
    default:
      return 'No Page Found';
  }
}
