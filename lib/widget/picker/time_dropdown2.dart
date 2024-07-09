import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:intl/intl.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class TimeDropdown2 extends StatefulWidget {
  final String initialValue;
  final String? selectedValue;
  final void Function(String selectedValue) onChange;
  const TimeDropdown2(
      {super.key,
      required this.onChange,
      required this.initialValue,
      this.selectedValue});

  @override
  State<TimeDropdown2> createState() => _TimeDropdown1State();
}

class _TimeDropdown1State extends State<TimeDropdown2> {
  String selectedValue = 'Lifetime';
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
          title: 'Lifetime',
          onTap: () {
            selectedValue = 'Lifetime';
            widget.onChange('Lifetime');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Last 7 days',
          onTap: () {
            selectedValue = 'Last 7 days';
            widget.onChange('Last 7 days');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Last 28 days',
          onTap: () {
            selectedValue = 'Last 28 days';
            widget.onChange('Last 28 days');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
            title: 'Custom Date',
            onTap: () {
              final dataRange = showDateRangePicker(
                context: context,
                firstDate: DateTime(2024),
                lastDate: DateTime.now(),
                currentDate: DateTime.now(),
                initialEntryMode: DatePickerEntryMode.input,
              );
              dataRange.then((value) {
                if (value != null) {
                  selectedValue = formatDateRange(value);
                  widget.onChange(formatDateRange(value));
                  setState(() {});
                }
              });
            }),
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
            selectedValue,
            style: const TextStyle(color: secondaryColor),
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
