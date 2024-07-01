import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';

class MobilePlanView extends ConsumerStatefulWidget {
  const MobilePlanView({super.key});

  @override
  ConsumerState<MobilePlanView> createState() => _MobilePlanViewState();
}

class _MobilePlanViewState extends ConsumerState<MobilePlanView> {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return SingleChildScrollView(
      child: PaddedColumn(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        children: [
          gapH20,
          ...List.generate(
              4,
              (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: darkBlack,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: PaddedColumn(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 10.h),
                        children: [
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            contentPadding: EdgeInsets.zero,
                            titleAlignment: ListTileTitleAlignment.top,
                            title: const Text("Gold Plan for 3 months",
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w600)),
                            subtitle: Row(
                              children: [
                                Text("\$ 90",
                                    style: TextStyle(
                                        color: kWhite,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28.sp)),
                                gapW10,
                                Text(
                                  " \$900", // 1
                                  style: TextStyle(
                                      color: kGrey,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ),
                              ],
                            ),
                            trailing: const Icon(Icons.more_vert_outlined,
                                color: kWhite),
                          ),
                          Text(
                            "This is the best plan for you. You will get the best service and the best results.",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xFFB0B0B0),
                            ),
                          ),
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            contentPadding: EdgeInsets.zero,
                            titleAlignment: ListTileTitleAlignment.center,
                            leading: const Icon(CupertinoIcons.calendar,
                                color: kWhite),
                            title: Text("Duration - 6 months",
                                style: TextStyle(
                                    color: kWhite,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
