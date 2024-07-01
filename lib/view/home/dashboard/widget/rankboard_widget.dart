import 'package:auto_size_text/auto_size_text.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class RankboardWidget extends StatelessWidget {
  final double width;

  const RankboardWidget({
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
              "Rank Board",
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
                "Month",
                maxLines: 1,
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 64, 63, 63),
            thickness: 1,
          ),
          gapH10,
          ...List.generate(
              10,
              (i) => ResponsiveDashboard.isMobile(context)
                  ? const ListTile(
                      leading: ProfileImg(
                        url: "https://i.imgur.com/UnWWlu3.png",
                      ),
                      title: Text(
                        "Ayush Maji",
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Text(
                        "99 days streak",
                        maxLines: 1,
                        style: TextStyle(
                          color: Color(0xffA3AED0),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: Text(
                        "22 hrs",
                        maxLines: 1,
                        style: TextStyle(
                          color: Color(0xffA3AED0),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      width: double.infinity,
                      child: PaddedRow(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          Text(
                            "${i + 1}",
                            style: const TextStyle(
                              color: kWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          gapW25,
                          const ProfileImg(
                            url: "https://i.imgur.com/UnWWlu3.png",
                          ),
                          gapW15,
                          const Expanded(
                            child: Text(
                              "John Doe",
                              maxLines: 2,
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Expanded(
                            flex: 2,
                            child: Text(
                              "99 days streak",
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xffA3AED0),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "22 hrs",
                                maxLines: 1,
                                style: TextStyle(
                                  color: Color(0xffA3AED0),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
