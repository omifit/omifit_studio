import 'package:omifit/utils/utils.dart';

class AttendanceInfoCard extends StatelessWidget {
  final String tittle;
  final String subTittle;
  final String trailing;
  const AttendanceInfoCard(
      {super.key,
      required this.tittle,
      required this.subTittle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(246, 118, 0, 0.17),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Row(
          children: [
            Text(
              tittle,
              style: TextStyle(
                color: kWhite,
                fontSize: ResponsiveDashboard.isMobile(context) ? 24.sp : 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            gapW4,
            Text(
              trailing,
              style: TextStyle(
                color: kWhite.withOpacity(0.8),
                fontSize: ResponsiveDashboard.isMobile(context) ? 13.sp : 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        subtitle: Text(
          subTittle,
          style: TextStyle(
            color: primaryColor,
            fontSize: ResponsiveDashboard.isMobile(context) ? 12.sp : 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
