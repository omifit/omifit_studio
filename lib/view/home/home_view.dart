import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omifit/view/home/dashboard/dashboard_view.dart';
import 'package:omifit/view/home/home_view_model.dart';
import 'package:omifit/view/home/lead/lead_view.dart';
import 'package:omifit/widget/sidebar/sidebar_widget.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  List<Widget> pages = [
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
    const LeadView()
  ];
  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
        key: homeViewModel.key,
        drawer: SidebarWidget(
          onDestinationSelected: homeViewModel.onDestinationSelected,
          selectedIndex: homeViewModel.selectedIndex,
        ),
        body: pages[homeViewModel.selectedIndex]);
  }
}
