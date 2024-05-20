import 'package:appflowy_board/appflowy_board.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/home/home_view_model.dart';
import 'package:omifit/widget/imgIcon/profile_img.dart';

class DesktopLeadView extends ConsumerStatefulWidget {
  const DesktopLeadView({super.key});

  @override
  ConsumerState<DesktopLeadView> createState() => _DesktopLeadViewState();
}

class _DesktopLeadViewState extends ConsumerState<DesktopLeadView> {
  final AppFlowyBoardController controller = AppFlowyBoardController(
    onMoveGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move item from $fromIndex to $toIndex');
    },
    onMoveGroupItem: (groupId, fromIndex, toIndex) {
      debugPrint('Move $groupId:$fromIndex to $groupId:$toIndex');
    },
    onMoveGroupItemToGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move $fromGroupId:$fromIndex to $toGroupId:$toIndex');
    },
  );
  @override
  void initState() {
    final group1 = AppFlowyGroupData(
      id: "ToDo",
      items: [],
      name: '',
    );
    final group2 = AppFlowyGroupData(
      id: "In Progress",
      items: [],
      name: '',
    );
    final group3 = AppFlowyGroupData(
      id: "Done",
      items: [],
      name: '',
    );
    final group4 = AppFlowyGroupData(
      id: "Review",
      items: [],
      name: '',
    );
    controller.addGroup(group1);
    controller.addGroup(group2);
    controller.addGroup(group3);
    controller.addGroup(group4);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      backgroundColor: darkBlack,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          height: double.infinity,
          color: darkBlack,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: kWhite,
                ),
                onPressed: () => homeViewModel.openDrawer(),
              ),
              const SizedBox(width: 10),
              const Text(
                'Leads',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: double.infinity,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: primaryColor,
                    iconColor: secondaryColor,
                    backgroundColor: const Color(0xFF57483E),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.folder_badge_plus),
                  label: const Text(
                    "Add Category",
                    style: TextStyle(
                      color: secondaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                decoration: BoxDecoration(
                  color: lightBlack,
                  borderRadius: BorderRadius.circular(90),
                ),
                child: Row(
                  children: [
                    IconButton(
                      tooltip: 'Send Message',
                      icon: const Icon(IconlyLight.send, color: kWhite),
                      hoverColor: primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      tooltip: 'Add Member',
                      icon: const Icon(IconlyLight.add_user, color: kWhite),
                      hoverColor: primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      tooltip: 'Mark Attendance',
                      icon: const Icon(CupertinoIcons.qrcode, color: kWhite),
                      hoverColor: primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 5),
                    const ProfileImg(url: "https://i.imgur.com/UnWWlu3.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: lightBlack,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: AppFlowyBoard(
            background: Container(
              color: bg,
            ),
            config: const AppFlowyBoardConfig(
              groupBackgroundColor: darkBlack,
              groupItemPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              cornerRadius: 38,
            ),
            headerBuilder: (context, groupData) => ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 25, right: 10, top: 8),
              title: Text(
                groupData.id,
                style: const TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  IconlyBold.filter,
                  color: kWhite,
                  size: 18,
                ),
                onPressed: () {},
              ),
            ),
            footerBuilder: (context, groupData) => SizedBox(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 15,
                ),
                child: SizedBox(
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: darkBlack,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      controller.addGroupItem(
                        groupData.id,
                        TextItem("New Card"),
                      );
                    },
                    icon: const Icon(
                      CupertinoIcons.add,
                      color: primaryColor,
                    ),
                    label: const Text(
                      "Add Lead",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            controller: controller,
            cardBuilder: (context, group, groupItem) {
              return AppFlowyGroupCard(
                decoration: BoxDecoration(
                  color: lightBlack,
                  borderRadius: BorderRadius.circular(30),
                ),
                key: ObjectKey(groupItem),
                child: SizedBox(
                  width: double.infinity,
                  child: PaddedColumn(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    children: [
                      const ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "Ryush Maji",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "27sep 2001",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: ProfileImg(
                          url: "https://i.imgur.com/UnWWlu3.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      const Text(
                        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful",
                        style: TextStyle(
                          color: Color.fromARGB(161, 230, 236, 240),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Wrap(
                        spacing: 2,
                        children: [
                          Chip(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: const Color(0xFF57483E),
                            label: const Text(
                              "9749003015",
                              style: TextStyle(color: primaryColor),
                            ),
                            side: const BorderSide(
                              color: bg,
                            ),
                          ),
                          const SizedBox(width: 2),
                          Chip(
                            backgroundColor: const Color(0xFF57483E),
                            label: const Text(
                              "ayushmaji20@gmail.com",
                              style: TextStyle(color: primaryColor),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            side: const BorderSide(
                              color: bg,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              );
            },
            groupConstraints: const BoxConstraints.tightFor(width: 400),
          ),
        ),
      ),
    );
  }
}

class TextItem extends AppFlowyGroupItem {
  final String s;
  TextItem(this.s);

  @override
  String get id => s;
}
