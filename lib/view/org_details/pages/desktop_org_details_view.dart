import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:omifit/utils/utils.dart';
import 'package:omifit/widget/imageicon/profile_img.dart';

class DesktopOrgDetailsView extends StatefulWidget {
  const DesktopOrgDetailsView({super.key});

  @override
  State<DesktopOrgDetailsView> createState() => _DesktopOrgDetailsViewState();
}

class _DesktopOrgDetailsViewState extends State<DesktopOrgDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text(
          "Organization Details",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gapH50,
            Align(
              child: Container(
                constraints:
                    const BoxConstraints(maxWidth: 650, minHeight: 400),
                decoration: BoxDecoration(
                  color: darkBlack,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: PaddedColumn(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  children: [
                    gapH25,
                    InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        HapticFeedback.lightImpact();
                        // openPickImageModalSheet(context).then((value) {
                        //   if (value != null) {}
                        // });
                      },
                      child: const Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: ProfileImg(
                                url: "https://i.imgur.com/UnWWlu3.png",
                                height: double.infinity,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: kWhite,
                            radius: 16,
                            child: CircleAvatar(
                              backgroundColor: secondaryColor,
                              radius: 14,
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    gapH45,
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Organization Name",
                        labelStyle: TextStyle(color: kWhite),
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                    gapH20,
                    TextFormField(
                      controller: TextEditingController(),
                      readOnly: true,
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          onDatePickerModeChange: (value) => print(value),
                        ).then((value) {
                          if (value != null) {
                            setState(() {});
                          }
                        });
                      },
                      cursorColor: primaryColor,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        hintText: 'Enter Your Date of Birth',
                        hintStyle: const TextStyle(
                          color: kGrey,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: const Icon(
                          IconlyBold.calendar,
                          color: kGrey,
                        ),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? "DOB can't be empty" : null,
                    ),
                    gapH30,
                    const Divider(
                      color: kGrey,
                      thickness: 0.5,
                    ),
                    gapH20,
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: lightBlack,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: PaddedColumn(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        children: [
                          ListTile(
                            title: const Text(
                              "Add Department",
                              style: TextStyle(
                                color: kWhite,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            trailing: InkWell(
                              onTap: () {
                                HapticFeedback.lightImpact();
                                showDialog(
                                  barrierColor: darkBlack.withOpacity(0.1),
                                  context: context,
                                  builder: (BuildContext context) =>
                                      CupertinoAlertDialog(
                                    title: const Text("Add Department",
                                        style: TextStyle(
                                          color: kGrey,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          letterSpacing: 0.5,
                                        )),
                                    content: Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: SizedBox(
                                        height: 40,
                                        child: CupertinoTextField(
                                          placeholder: "Enter Department Name",
                                          placeholderStyle: const TextStyle(
                                            color: kGrey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          style: const TextStyle(
                                            color: kWhite,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          decoration: BoxDecoration(
                                            color: darkBlack,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    actions: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: TextButton(
                                          onPressed: () {
                                            context.pop();
                                          },
                                          child: const Text("Submit"),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: const Icon(
                                CupertinoIcons.add,
                                color: kWhite,
                              ),
                            ),
                          ),
                          gapH10,
                          ...List.generate(
                              4,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: kyellowbg.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ListTile(
                                        title: const Text(
                                          "Trainer",
                                          style: TextStyle(
                                            color: secondaryColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        trailing: const Icon(
                                          Icons.delete,
                                          color: kRed,
                                        ),
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                CupertinoAlertDialog(
                                              title: const Text("Delete"),
                                              content: const Text(
                                                  "Are you sure you want to delete this department?"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    context.pop();
                                                  },
                                                  child: const Text("No"),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    context.pop();
                                                  },
                                                  child: const Text("Yes"),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ))
                        ],
                      ),
                    ),
                    gapH20,
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: OutlinedBtn(
                        text: 'Save',
                        onPressed: () {},
                      ),
                    ),
                    gapH40,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
