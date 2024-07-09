import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class TimeDropdown1 extends StatefulWidget {
  final String initialValue;
  final void Function(String selectedValue) onChange;
  const TimeDropdown1(
      {super.key, required this.onChange, required this.initialValue});

  @override
  State<TimeDropdown1> createState() => _TimeDropdown1State();
}

class _TimeDropdown1State extends State<TimeDropdown1> {
  String selectedDate = '';
  @override
  void initState() {
    selectedDate = widget.initialValue;
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
          title: 'Last 7 days',
          selected: selectedDate == 'Last 7 days',
          onTap: () {
            selectedDate = 'Last 7 days';
            widget.onChange(selectedDate);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Last 28 days',
          selected: selectedDate == 'Last 28 days',
          onTap: () {
            selectedDate = 'Last 28 days';
            widget.onChange(selectedDate);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Last 90 days',
          selected: selectedDate == 'Last 90 days',
          onTap: () {
            selectedDate = 'Last 90 days';
            widget.onChange(selectedDate);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Last 365 days',
          selected: selectedDate == 'Last 365 days',
          onTap: () {
            selectedDate = 'Last 365 days';
            widget.onChange(selectedDate);
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Lifetime',
          selected: selectedDate == 'Lifetime',
          onTap: () {
            selectedDate = 'Lifetime';
            widget.onChange(selectedDate);
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
          child: Text(
            selectedDate,
            style: const TextStyle(color: secondaryColor),
          ),
        ),
      ),
    );
  }
}
