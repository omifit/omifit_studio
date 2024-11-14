import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:intl/intl.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class PaymentTypeDropdown extends StatefulWidget {
  final String initialValue;
  final String? selectedValue;
  final void Function(String selectedValue) onChange;
  const PaymentTypeDropdown(
      {super.key,
      required this.onChange,
      required this.initialValue,
      this.selectedValue});

  @override
  State<PaymentTypeDropdown> createState() => _TimeDropdown1State();
}

class _TimeDropdown1State extends State<PaymentTypeDropdown> {
  String selectedValue = 'Cash';
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
        width: 200,
        accessibilityWidth: 200,
      ),
      itemBuilder: (context) => [
        PullDownMenuItem.selectable(
          title: 'Cash',
          selected: selectedValue == 'Cash',
          onTap: () {
            selectedValue = 'Cash';
            widget.onChange('Cash');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'QR Code Payment',
          selected: selectedValue == 'QR Code Payment',
          onTap: () {
            selectedValue = 'QR Code Payment';
            widget.onChange('QR Code Payment');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Credit Card',
          selected: selectedValue == 'Credit Card',
          onTap: () {
            selectedValue = 'Credit Card';
            widget.onChange('Credit Card');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Debit Card',
          selected: selectedValue == 'Debit Card',
          onTap: () {
            selectedValue = 'Debit Card';
            widget.onChange('Debit Card');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Net Banking',
          selected: selectedValue == 'Net Banking',
          onTap: () {
            selectedValue = 'Net Banking';
            widget.onChange('Net Banking');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'UPI',
          selected: selectedValue == 'UPI',
          onTap: () {
            selectedValue = 'UPI';
            widget.onChange('UPI');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Mobile Wallets',
          selected: selectedValue == 'Mobile Wallets',
          onTap: () {
            selectedValue = 'Mobile Wallets';
            widget.onChange('Mobile Wallets');
            setState(() {});
          },
        ),
        PullDownMenuItem.selectable(
          title: 'Bank Transfer',
          selected: selectedValue == 'Bank Transfer',
          onTap: () {
            selectedValue = 'Bank Transfer';
            widget.onChange('Bank Transfer');
            setState(() {});
          },
        ),
      ],
      buttonBuilder: (context, showMenu) => BouncingWidget(
        onPressed: showMenu,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 16 : 10,
            vertical: Responsive.isMobile(context) ? 8 : 5,
          ),
          decoration: BoxDecoration(
            color: kyellowbg,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                selectedValue,
                style: const TextStyle(
                  color: secondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: primaryColor,
              )
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
