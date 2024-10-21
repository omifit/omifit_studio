import 'package:flutter/cupertino.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class MeminfoCard extends StatelessWidget {
  final String name;
  final String phone;
  final String age;
  final bool isVerify;
  final String gender;
  final String profession;
  final String joinDate;
  final String picture;
  final Function()? onEdit;
  const MeminfoCard({
    super.key,
    required this.name,
    required this.phone,
    required this.age,
    required this.gender,
    required this.profession,
    required this.joinDate,
    required this.picture,
    required this.isVerify,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveMemberDetails.isMobile(context) ? double.infinity : 320,
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(24),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          gapH12,
          InkWell(
            onTap: onEdit,
            child: Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                  backgroundColor: kGrey.withOpacity(0.5),
                  radius: 16,
                  child: const Icon(
                    IconlyLight.edit,
                    color: kWhite,
                    size: 20,
                  )),
            ),
          ),
          Align(
            child: CircleAvatar(
              radius: 47,
              backgroundColor: kWhite,
              child: ProfileImg(
                url: picture,
                height: 90,
                width: 90,
              ),
            ),
          ),
          gapH15,
          Align(
            child: Text(
              name,
              style: const TextStyle(
                color: kGrey,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          gapH10,
          const Divider(
            color: kGrey,
            thickness: 0.3,
          ),
          gapH4,
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              CupertinoIcons.phone,
              color: Color(0xffB2B2B2),
            ),
            title: Text(
              phone,
              style: const TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              CupertinoIcons.calendar,
              color: Color(0xffB2B2B2),
            ),
            title: Text(
              "$age (age)",
              style: const TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              CupertinoIcons.person_fill,
              color: Color(0xffB2B2B2),
            ),
            title: Text(
              gender,
              style: const TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              isVerify ? IconlyLight.shield_done : IconlyLight.shield_fail,
              color: isVerify ? kBlue : kyellow,
            ),
            title: Text(
              isVerify ? 'Verified' : 'Not-Verified',
              style: TextStyle(
                color: isVerify ? kBlue : kyellow,
                fontSize: 14,
              ),
            ),
          ),
          // const ListTile(
          //   dense: true,
          //   visualDensity: VisualDensity.compact,
          //   contentPadding: EdgeInsets.zero,
          //   leading: Icon(
          //     CupertinoIcons.location,
          //     color: Color(0xffB2B2B2),
          //   ),
          //   title: Text(
          //     "170a, picnic garden, kolkata, wb, 721008",
          //     style: TextStyle(
          //       color: Color(0xffB2B2B2),
          //       fontSize: 14,
          //     ),
          //   ),
          // ),

          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Chip(
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
                  label: Text(
                    profession,
                    style: const TextStyle(
                      color: kGreen,
                    ), //TextStyle
                  ), //Text
                ),
              ),
              gapW10,
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Chip(
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
                  label: Text(
                    'joined ${DateFormat('dd MMM yyyy').format(DateTime.parse(joinDate))}',
                    style: const TextStyle(
                      color: kWhite,
                    ), //TextStyle
                  ), //Text
                ),
              ),
            ],
          ),
          gapH20,
        ],
      ),
    );
  }
}
