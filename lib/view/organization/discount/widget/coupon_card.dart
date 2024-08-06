import 'package:dotted_line/dotted_line.dart';
import 'package:omifit/utils/utils.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0xFF272729),
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        children: [
          const PaddedColumn(
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                leading: ImageIcon(
                  AssetImage("assets/icons/coupon.png"),
                  color: kRed,
                  size: 30,
                ),
                titleAlignment: ListTileTitleAlignment.top,
                title: Text("BIRTHDAY20",
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w800)),
              ),
              Text(
                  "We advertise on social media to drive local clients onto Cosmetropolis and directly to your profile",
                  style: TextStyle(
                      color: Color.fromRGBO(230, 236, 240, 0.68),
                      fontSize: 14,
                      fontWeight: FontWeight.w200)),
            ],
          ),
          gapH10,
          Row(
            children: [
              Container(
                  width: 15,
                  height: 25,
                  decoration: BoxDecoration(
                      color: ResponsiveDiscount.isMobile(context)
                          ? lightBlack
                          : darkBlack,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ))),
              gapW10,
              Expanded(
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineThickness: 1.0,
                  dashLength: 17,
                  dashColor: Colors.black,
                  dashGradient: const [
                    Color.fromRGBO(255, 255, 255, 0.134),
                    Color.fromRGBO(255, 255, 255, 0.134),
                  ],
                  dashRadius: 0.0,
                  dashGapLength: 3,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
              gapW10,
              Container(
                  width: 15,
                  height: 25,
                  decoration: BoxDecoration(
                      color: ResponsiveDiscount.isMobile(context)
                          ? lightBlack
                          : darkBlack,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      ))),
            ],
          ),
          gapH10,
          PaddedRow(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: kyellowbg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Align(
                    child: Text("Start - 27/02/2001",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              gapW10,
              Expanded(
                flex: 2,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: kBluebg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Align(
                    child: Text("End - 27/02/2001",
                        style: TextStyle(
                            color: kGreen,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ],
          ),
          gapH5,
        ],
      ),
    );
  }
}
