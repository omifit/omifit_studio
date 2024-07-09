import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:intl/intl.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class StatusDropdown extends StatefulWidget {
  final String initialValue;
  final String? selectedValue;
  final void Function(String selectedValue) onChange;
  const StatusDropdown(
      {super.key,
      required this.onChange,
      required this.initialValue,
      this.selectedValue});

  @override
  State<StatusDropdown> createState() => _TimeDropdown1State();
}

class _TimeDropdown1State extends State<StatusDropdown> {
  String selectedValue = 'All';
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
        PullDownMenuItem.selectable(
          title: 'All',
          onTap: () {
            selectedValue = 'All';
            widget.onChange('All');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Active',
          onTap: () {
            selectedValue = 'Active';
            widget.onChange('Active');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Paused',
          onTap: () {
            selectedValue = 'Paused';
            widget.onChange('Paused');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Incoming',
          onTap: () {
            selectedValue = 'Incoming';
            widget.onChange('Incoming');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
            title: 'Risk Member',
            onTap: () {
              selectedValue = 'Risk Member';
              widget.onChange('Risk Member');
              setState(() {});
            }),
      ],
      buttonBuilder: (context, showMenu) => BouncingWidget(
        onPressed: showMenu,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 13,
            vertical: 7,
          ),
          decoration: BoxDecoration(
            color: kyellowbg,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selectedValue,
                style: const TextStyle(color: secondaryColor),
              ),
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

  String formatDateRange(DateTimeRange dateRange) {
    final DateTime start = dateRange.start;
    final DateTime end = dateRange.end;

    final DateFormat dayFormat = DateFormat('d MMM');
    final DateFormat yearFormat = DateFormat('yyyy');

    if (start.year == end.year) {
      if (start.month == end.month) {
        return '${dayFormat.format(start)} - ${dayFormat.format(end)} ${yearFormat.format(start)}';
      } else {
        return '${dayFormat.format(start)} - ${DateFormat('d MMM yyyy').format(end)}';
      }
    } else {
      return '${DateFormat('d MMM yyyy').format(start)} - ${DateFormat('d MMM yyyy').format(end)}';
    }
  }
}
