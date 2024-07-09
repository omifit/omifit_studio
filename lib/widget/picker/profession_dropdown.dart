import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class ProfessionDropdown extends StatefulWidget {
  final String initialValue;
  final void Function(String selectedValue) onChange;
  const ProfessionDropdown(
      {super.key, required this.onChange, required this.initialValue});

  @override
  State<ProfessionDropdown> createState() => _ProfessionDropdownState();
}

class _ProfessionDropdownState extends State<ProfessionDropdown> {
  String selectedValue = '';
  @override
  void initState() {
    selectedValue = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PullDownButton(
      menuOffset: 0,
      routeTheme: PullDownMenuRouteTheme(
        backgroundColor: const Color.fromARGB(73, 72, 72, 72),
        borderRadius: BorderRadius.circular(10),
        shadow: BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 10,
        ),
        // width: 150,
        // accessibilityWidth: 200,
      ),
      itemBuilder: (context) => [
        PullDownMenuItem.selectable(
          title: 'Student',
          selected: selectedValue == 'Student',
          onTap: () {
            selectedValue = 'Student';
            widget.onChange(selectedValue);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Worker',
          selected: selectedValue == 'Worker',
          onTap: () {
            selectedValue = 'Worker';
            widget.onChange(selectedValue);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Business',
          selected: selectedValue == 'Business',
          onTap: () {
            selectedValue = 'Business';
            widget.onChange(selectedValue);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Others',
          selected: selectedValue == 'Others',
          onTap: () {
            selectedValue = 'Others';
            widget.onChange(selectedValue);
            setState(() {});
          },
        ),
      ],
      buttonBuilder: (context, showMenu) => BouncingWidget(
        onPressed: showMenu,
        child: Container(
          width: double.infinity,
          height: 46,
          decoration: BoxDecoration(
            color: kyellowbg,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: PaddedRow(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  selectedValue,
                  style: const TextStyle(color: secondaryColor),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_drop_down,
                  color: secondaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
