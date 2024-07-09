import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:omifit/utils/utils.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: MediaQuery.of(context).size.width > 1000
          ? 4
          : MediaQuery.of(context).size.width > 500
              ? 2
              : 1,
      mainAxisSpacing: MediaQuery.of(context).size.width > 500 ? 25 : 12,
      crossAxisSpacing: 25,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            color: kyellowbg,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            title: index == 3
                ? Text(
                    "₹ 30,000",
                    style: TextStyle(
                      color: kWhite,
                      fontSize:
                          ResponsiveDashboard.isMobile(context) ? 24.sp : 35,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                : Row(
                    children: [
                      Icon(
                        index == 0
                            ? Icons.how_to_reg
                            : index == 1
                                ? Icons.group_add
                                : index == 2
                                    ? Icons.rotate_left
                                    : Icons.person,
                        color: kWhite,
                        size:
                            ResponsiveDashboard.isMobile(context) ? 24.sp : 28,
                      ),
                      gapW10,
                      Expanded(
                        child: Text(
                          "30",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: ResponsiveDashboard.isMobile(context)
                                ? 24.sp
                                : 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
            subtitle: Text(
              getTitle(index),
              style: TextStyle(
                color: secondaryColor,
                fontSize: ResponsiveDashboard.isMobile(context) ? 14.sp : 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        );
      },
    );
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return "Daily Members";
      case 1:
        return "Monthly Enrollments";
      case 2:
        return "Monthly Renewal";
      case 3:
        return "Pending Balance";
      default:
        return "";
    }
  }
}
