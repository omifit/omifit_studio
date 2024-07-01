import 'package:omifit/utils/utils.dart';

class ChipWidget extends StatelessWidget {
  final String tittle;
  final Color color;
  final Color bgColor;
  const ChipWidget(
      {super.key,
      required this.tittle,
      required this.color,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(36)),
        color: bgColor,
      ),
      child: Text(
        tittle,
        style: TextStyle(color: color, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );
  }
}
