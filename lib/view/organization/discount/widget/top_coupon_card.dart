import 'package:avatar_stack/avatar_stack.dart';
import 'package:omifit/utils/utils.dart';

class TopCouponCard extends StatelessWidget {
  const TopCouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: darkBlack,
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          gapH10,
          const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text("Top Coupon",
                style: TextStyle(
                    color: kWhite, fontSize: 16, fontWeight: FontWeight.w700)),
          ),
          const Divider(color: kGrey, thickness: 0.2),
          gapH10,
          ...List.generate(
              5,
              (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: lightBlack,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Text("BIRTHDAY20",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        trailing: AvatarStack(
                          width: 80,
                          height: 30,
                          borderColor: Colors.transparent,
                          avatars: [
                            for (var n = 10; n < 18; n++)
                              NetworkImage('https://i.pravatar.cc/150?img=$n'),
                          ],
                        ),
                      ),
                    ),
                  )),
          gapH10,
        ],
      ),
    );
  }
}
