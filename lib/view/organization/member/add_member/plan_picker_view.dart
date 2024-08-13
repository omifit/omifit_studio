import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/organization/member/add_member/payment_view.dart';

class PlanPickerView extends StatelessWidget {
  const PlanPickerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: AppBar(
        backgroundColor: darkBlack,
        title: Text(
          "Add Member",
          style: TextStyle(
            color: Colors.white,
            fontSize: Responsive.isMobile(context) ? 16 : 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: kWhite),
        ),
        actions: [
          TextButton(
            onPressed: () {
              showCupertinoModalSheet(
                  context: context, builder: (context) => const PaymentView());
            },
            child: const Text(
              "Next",
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          gapW10
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PaddedColumn(
              padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveMember.isMobile(context) ? 16 : 20),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH30,
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: lightBlack.withOpacity(0.3),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(
                            8,
                            (index) => Column(
                                  children: [
                                    CupertinoListTile(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 16),
                                      leading: Checkbox(
                                          activeColor: kGreen,
                                          checkColor: kWhite,
                                          value: index == 0,
                                          onChanged: (value) {}),
                                      title: Text("Gold Plan for 3 months",
                                          style: TextStyle(
                                              color: kWhite.withOpacity(0.9),
                                              fontSize:
                                                  ResponsiveMember.isMobile(
                                                          context)
                                                      ? 14
                                                      : 16,
                                              fontWeight: FontWeight.w400)),
                                      trailing: Text("₹ 90",
                                          style: TextStyle(
                                              color: kWhite,
                                              fontSize:
                                                  ResponsiveMember.isMobile(
                                                          context)
                                                      ? 18
                                                      : 16,
                                              fontWeight: FontWeight.w500)),
                                      subtitle: Text("Duration - 6 months",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  95, 217, 215, 215),
                                              fontSize:
                                                  ResponsiveMember.isMobile(
                                                          context)
                                                      ? 12
                                                      : 13,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                    if (index == 7)
                                      const SizedBox()
                                    else
                                      const Divider(
                                        color: kGrey,
                                        thickness: 0.2,
                                      ),
                                  ],
                                ))
                      ],
                    )),
              ],
            ),
            gapH30
          ],
        ),
      ),
    );
  }
}
