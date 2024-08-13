import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class PaginationDropdown extends StatefulWidget {
  final int initialValue;
  final int? selectedValue;
  final void Function(int selectedValue) onChange;
  const PaginationDropdown(
      {super.key,
      required this.onChange,
      required this.initialValue,
      this.selectedValue});

  @override
  State<PaginationDropdown> createState() => _TimeDropdown1State();
}

class _TimeDropdown1State extends State<PaginationDropdown> {
  int selectedValue = 0;
  @override
  void initState() {
    selectedValue = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PullDownButton(
      routeTheme: PullDownMenuRouteTheme(
        backgroundColor: const Color.fromARGB(73, 72, 72, 72),
        borderRadius: BorderRadius.circular(10),
        shadow: BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 10,
        ),
        width: 150,
        accessibilityWidth: 200,
      ),
      itemBuilder: (context) => [
        ...List.generate(
          10,
          (index) => PullDownMenuItem.selectable(
            title: index.toString(),
            selected: selectedValue == index,
            onTap: () {
              selectedValue = index;
              widget.onChange(index);
              setState(() {});
            },
          ),
        )
      ],
      buttonBuilder: (context, showMenu) => BouncingWidget(
        onPressed: showMenu,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 13,
            vertical: 7,
          ),
          decoration: BoxDecoration(
            color: Responsive.isMobile(context) ? primaryColor : kyellowbg,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_left_outlined,
                color: Responsive.isMobile(context) ? kWhite : secondaryColor,
              ),
              gapW10,
              Text(
                "Page - $selectedValue",
                style: TextStyle(
                    color:
                        Responsive.isMobile(context) ? kWhite : secondaryColor),
              ),
              gapW10,
              Icon(
                Icons.arrow_right_outlined,
                color: Responsive.isMobile(context) ? kWhite : secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
