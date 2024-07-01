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
      crossAxisCount: MediaQuery.of(context).size.width > 1000 ? 4 : 2,
      mainAxisSpacing: 25,
      crossAxisSpacing: 25,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(246, 118, 0, 0.17),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            title: Text(
              "30",
              style: TextStyle(
                color: kyellow,
                fontSize: ResponsiveDashboard.isMobile(context) ? 24.sp : 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              "Daily Members",
              style: TextStyle(
                color: kWhite,
                fontSize: ResponsiveDashboard.isMobile(context) ? 12.sp : 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        );
      },
    );
  }
}
