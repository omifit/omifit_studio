import 'package:omifit/utils/utils.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';

class AgeInfo extends StatelessWidget {
  const AgeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Segment> segments = [
      const Segment(value: 90, color: Colors.purple, label: Text("6-12 years")),
      const Segment(
          value: 14, color: Colors.deepOrange, label: Text("13-18 years")),
      const Segment(value: 2, color: Colors.green, label: Text(" 19-25 years")),
      const Segment(value: 4, color: Colors.blue, label: Text("26-30 years")),
      const Segment(value: 6, color: Colors.red, label: Text("31-40 years")),
      const Segment(value: 8, color: Colors.yellow, label: Text("40-50 years")),
      const Segment(value: 10, color: Colors.green, label: Text("50+ years")),
    ];
    return DecoratedBox(
      decoration: BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.circular(20),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            titleAlignment: ListTileTitleAlignment.top,
            title: Text(
              "Ages",
              style: TextStyle(
                color: kWhite,
                fontSize: ResponsiveDashboard.isMobile(context) ? 16.sp : 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
              ),
              onPressed: () {},
              child: const Text(
                "Month",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              PrimerProgressBar(
                  legendStyle: const SegmentedBarLegendStyle(
                    spacing: 30,
                    runSpacing: 12,
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  segments: segments),
              gapH30,
            ],
          ),
        ],
      ),
    );
  }
}
