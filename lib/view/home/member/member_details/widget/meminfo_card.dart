import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class MeminfoCard extends StatelessWidget {
  const MeminfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveMemberDetails.isMobile(context) ? double.infinity : 320,
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(24),
      ),
      child: PaddedColumn(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          gapH25,
          const CircleAvatar(
            radius: 47,
            backgroundColor: kWhite,
            child: ProfileImg(
              url: "https://i.imgur.com/UnWWlu3.png",
              height: 90,
              width: 90,
            ),
          ),
          gapH15,
          const Text(
            "Ayush Maji",
            style: TextStyle(
              color: kGrey,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          gapH10,
          const Divider(
            color: kGrey,
            thickness: 0.3,
          ),
          gapH4,
          const ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              CupertinoIcons.phone,
              color: Color(0xffB2B2B2),
            ),
            title: Text(
              "9749003015",
              style: TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          const ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              CupertinoIcons.calendar,
              color: Color(0xffB2B2B2),
            ),
            title: Text(
              "34 years (age)",
              style: TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          const ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              CupertinoIcons.person_fill,
              color: Color(0xffB2B2B2),
            ),
            title: Text(
              "Female",
              style: TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          const ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              CupertinoIcons.location,
              color: Color(0xffB2B2B2),
            ),
            title: Text(
              "170a, picnic garden, kolkata, wb, 721008",
              style: TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          gapH10,
          Wrap(
            children: [
              Chip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(
                      color: kGreenbg,
                    )),
                backgroundColor: kGreenbg,
                avatar: const Icon(
                  CupertinoIcons.bag,
                  color: kGreen,
                ),
                label: const Text(
                  'Student',
                  style: TextStyle(
                    color: kGreen,
                  ), //TextStyle
                ), //Text
              ),
              gapW10,
              Chip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(
                      color: lightBlack,
                    )),
                backgroundColor: lightBlack,
                avatar: const Icon(
                  CupertinoIcons.timer,
                  color: kWhite,
                ),
                label: const Text(
                  'joined 27sep 2001',
                  style: TextStyle(
                    color: kWhite,
                  ), //TextStyle
                ), //Text
              ),
            ],
          ),
          gapH20,
        ],
      ),
    );
  }
}
