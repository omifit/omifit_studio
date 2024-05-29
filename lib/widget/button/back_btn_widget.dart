import 'package:omifit/utils/utils.dart';

class BackBtn extends StatelessWidget {
  final void Function()? onPressed;
  const BackBtn({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(
        Icons.arrow_back_ios,
        color: primaryColor,
      ),
    );
  }
}
