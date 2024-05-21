import 'package:flutter/cupertino.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';
import 'package:omifit/widget/imgIcon/profile_img.dart';

class DesktopDashboardView extends ConsumerStatefulWidget {
  const DesktopDashboardView({super.key});

  @override
  ConsumerState<DesktopDashboardView> createState() =>
      _DesktopDashboardViewState();
}

class _DesktopDashboardViewState extends ConsumerState<DesktopDashboardView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          height: double.infinity,
          color: darkBlack,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: kWhite,
                ),
                onPressed: () => homeViewModel.openDrawer(),
              ),
              const SizedBox(width: 10),
              const Text(
                'Dashboard',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 100),
              SizedBox(
                width: 500,
                child: TextField(
                  readOnly: true,
                  onTap: () {
                    context.pushNamed(AppRoute.search.name);
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: kWhite),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        CupertinoIcons.search,
                        color: kWhite,
                      ),
                    ),
                    filled: true,
                    fillColor: lightBlack,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                decoration: BoxDecoration(
                  color: lightBlack,
                  borderRadius: BorderRadius.circular(90),
                ),
                child: Row(
                  children: [
                    IconButton(
                      tooltip: 'Send Message',
                      icon: const Icon(IconlyLight.send, color: kWhite),
                      hoverColor: primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      tooltip: 'Add Member',
                      icon: const Icon(IconlyLight.add_user, color: kWhite),
                      hoverColor: primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      tooltip: 'Mark Attendance',
                      icon: const Icon(CupertinoIcons.qrcode, color: kWhite),
                      hoverColor: primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 5),
                    const Hero(
                      tag: "loading",
                      child: ProfileImg(url: "https://i.imgur.com/UnWWlu3.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
