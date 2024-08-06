import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/chips/chip_widget.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class RiskMemberDialog {
  static WoltModalSheetPage build(BuildContext context) {
    return WoltModalSheetPage(
      backgroundColor: darkBlack,
      surfaceTintColor: darkBlack,
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      topBar: PaddedRow(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              gapW10,
              Text(
                "Risk Members",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveDashboard.isMobile(context) ? 18 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      trailingNavBarWidget: Padding(
        padding: const EdgeInsets.only(right: 22),
        child: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(kyellowbg),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.close, color: primaryColor),
        ),
      ),
      child: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH30,
              ...List.generate(
                20,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                      tileColor: const Color.fromARGB(235, 65, 65, 65),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      leading: const ProfileImg(
                          url: 'https://i.imgur.com/UnWWlu3.png'),
                      title: const Text('Ayush Maji'),
                      subtitle: const Text('MID - 12022',
                          style: TextStyle(fontSize: 12, color: kGrey)),
                      trailing: const ChipWidget(
                          tittle: "7d", color: kGreen, bgColor: kGreenbg)),
                ),
              ),
              gapH10,
            ],
          );
        },
      ),
    );
  }
}
