import 'package:auto_size_text/auto_size_text.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/colors.dart';
import 'package:omifit/utils/responsive.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class ExpireSoonWidget extends StatelessWidget {
  final double width;

  const ExpireSoonWidget({
    super.key,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(20),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        children: [
          const SizedBox(height: 10),
          ListTile(
            title: AutoSizeText(
              "Plan Expaire Soon",
              maxLines: 1,
              style: TextStyle(
                color: kWhite,
                fontSize: ResponsiveDashboard.isMobile(context) ? 16.sp : 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const AutoSizeText(
                "View All",
                maxLines: 1,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          ...List.generate(
            5,
            (index) => ListTile(
              leading: const ProfileImg(url: "https://i.imgur.com/UnWWlu3.png"),
              title: const AutoSizeText(
                "Ayush Maji",
                maxLines: 1,
                style: TextStyle(
                  color: kWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const AutoSizeText(
                "2 days left",
                maxLines: 2,
                style: TextStyle(
                  color: Color(0xffA3AED0),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyLight.arrow_right_circle,
                  color: kGrey,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
