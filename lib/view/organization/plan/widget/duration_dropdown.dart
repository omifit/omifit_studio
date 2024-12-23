import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class DurationDropdown extends StatefulWidget {
  final String initialValue;
  final void Function(String selectedValue) onChange;
  const DurationDropdown(
      {super.key, required this.onChange, required this.initialValue});

  @override
  State<DurationDropdown> createState() => _DurationDropdownState();
}

class _DurationDropdownState extends State<DurationDropdown> {
  String selectedDuration = '';
  @override
  void initState() {
    selectedDuration = widget.initialValue;
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
        PullDownMenuItem.selectable(
          title: 'Day',
          selected: selectedDuration == 'Day',
          onTap: () {
            selectedDuration = 'Day';
            widget.onChange(selectedDuration);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Week',
          selected: selectedDuration == 'Week',
          onTap: () {
            selectedDuration = 'Week';
            widget.onChange(selectedDuration);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Month',
          selected: selectedDuration == 'Month',
          onTap: () {
            selectedDuration = 'Month';
            widget.onChange(selectedDuration);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Year',
          selected: selectedDuration == 'Year',
          onTap: () {
            selectedDuration = 'Year';
            widget.onChange(selectedDuration);
            setState(() {});
          },
        ),
      ],
      buttonBuilder: (context, showMenu) => BouncingWidget(
        onPressed: showMenu,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: kyellowbg,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                selectedDuration,
                style: const TextStyle(color: secondaryColor),
              ),
              gapW5,
              const Icon(
                Icons.arrow_drop_down,
                color: secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
