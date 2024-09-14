import 'package:omifit/utils/utils.dart';

class GuidanceCard extends StatelessWidget {
  final String tittle;
  final Function() onPressed;
  const GuidanceCard({
    super.key,
    required this.tittle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: darkBlack,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 60,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Align(
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            title: Text(tittle),
            trailing: const CircleAvatar(
              radius: 16,
              backgroundColor: Color.fromRGBO(235, 150, 31, 0.21),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: primaryColor,
                size: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
