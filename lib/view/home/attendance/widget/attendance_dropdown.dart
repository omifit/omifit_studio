import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:intl/intl.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class AttendanceDropdown extends StatefulWidget {
  final String initialValue;
  final String? selectedValue;
  final void Function(String selectedValue) onChange;
  const AttendanceDropdown(
      {super.key,
      required this.onChange,
      required this.initialValue,
      this.selectedValue});

  @override
  State<AttendanceDropdown> createState() => _TimeDropdown1State();
}

class _TimeDropdown1State extends State<AttendanceDropdown> {
  String selectedValue = 'Today';
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
          title: 'Today',
          onTap: () {
            selectedValue = 'Today';
            widget.onChange('Today');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Yesterday',
          onTap: () {
            selectedValue = 'Yesterday';
            widget.onChange('Yesterday');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
            title: 'Custom Date',
            onTap: () {
              final dataPicker = showDatePicker(
                context: context,
                firstDate: DateTime(2023),
                lastDate: DateTime.now(),
                currentDate: DateTime.now(),
                initialEntryMode: DatePickerEntryMode.calendar,
              );
              dataPicker.then((value) {
                if (value != null) {
                  selectedValue = formatDate(value);
                  widget.onChange(formatDate(value));
                  setState(() {});
                }
              });
            }),
      ],
      buttonBuilder: (context, showMenu) => BouncingWidget(
        onPressed: showMenu,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: ResponsiveAttendance.isMobile(context)
                ? primaryColor
                : kyellowbg,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              gapW10,
              Text(
                selectedValue,
                style: TextStyle(
                    color: ResponsiveAttendance.isMobile(context)
                        ? kWhite
                        : secondaryColor),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: kWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String formatDate(DateTime dateTime) {
    final DateTime date = dateTime;

    final DateFormat dayFormat = DateFormat('d MMM');
    final DateFormat yearFormat = DateFormat('yyyy');

    if (date.year == date.year) {
      if (date.month == date.month) {
        return dayFormat.format(date);
      } else {
        return dayFormat.format(date);
      }
    } else {
      return DateFormat('d MMM yyyy').format(date);
    }
  }
}
