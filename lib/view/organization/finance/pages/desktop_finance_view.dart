import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/member/member/widget/joindate_dropdown.dart';

class DesktopFinanceView extends StatefulWidget {
  const DesktopFinanceView({super.key});

  @override
  State<DesktopFinanceView> createState() => _DesktopFinanceViewState();
}

class _DesktopFinanceViewState extends State<DesktopFinanceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: darkBlack,
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        child: PaddedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              gapH16,
              Row(
                children: [
                  const Text(
                    "Purchase History",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gapW10,
                  const Spacer(),
                  // const Text(
                  //   "Payment Method -",
                  //   style: TextStyle(
                  //     color: kGrey,
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
                  // gapW10,
                  // JoindateDropdown(
                  //   onChange: (value) {},
                  //   initialValue: "All",
                  // ),
                  // gapW10,
                  const Text(
                    "Purchase Date  -",
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  gapW10,
                  JoindateDropdown(
                    onChange: (value) {},
                    initialValue: "All",
                  ),
                  // gapW6,
                  // SizedBox(
                  //   height: 35,
                  //   child: VerticalDivider(
                  //     color: kGrey.withOpacity(0.4),
                  //     thickness: 0.3,
                  //   ),
                  // ),
                  // gapW6,
                ],
              ),
              gapH14,
              // const FinanceInfoWidget(),
              // gapH12,
              const Divider(color: kGrey, thickness: 0.2),
              gapH10,
              Expanded(
                  child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          ...List.generate(
                              100,
                              (index) => Container(
                                    decoration: BoxDecoration(
                                      color: kGrey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    child: ListTile(
                                      title: Text("Name $index"),
                                      subtitle: Text("Number $index"),
                                      trailing: Text("Amount $index"),
                                    ),
                                  )),
                        ],
                      ),
                    ),
                    gapW25,
                    Expanded(
                        child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: kGrey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            title: Text("Total Amount"),
                            trailing: Text(
                              "Rs. 1000",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            title: Text("Total Paid"),
                            trailing: Text(
                              "Rs. 1000",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            title: Text("Total Due"),
                            trailing: Text(
                              "Rs. 1000",
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            ),
                          ),
                          const Divider(
                            color: kGrey,
                            thickness: 0.2,
                          ),
                          ...List.generate(
                              10,
                              (index) => const ListTile(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -4),
                                    title: Text("Cash"),
                                    trailing: Text(
                                      "100",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                        ],
                      ),
                    )),
                  ],
                ),
              ))
            ]),
      ),
    ));
  }
}
