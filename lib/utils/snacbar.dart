import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:omifit/utils/utils.dart';

class Ksnackbar {
  static void success(String message, BuildContext context) {
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.success,
      desktopSnackBarPosition: DesktopSnackBarPosition.bottomRight,
      duration: const Duration(seconds: 4),
    ).show(context);
  }

  static void error(String message, BuildContext context) {
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.error,
      desktopSnackBarPosition: DesktopSnackBarPosition.bottomRight,
      duration: const Duration(seconds: 4),
    ).show(context);
  }

  static void warning(String message, BuildContext context) {
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.warning,
      desktopSnackBarPosition: DesktopSnackBarPosition.bottomRight,
      duration: const Duration(seconds: 4),
    ).show(context);
  }

  static void info(String message, BuildContext context) {
    AnimatedSnackBar.material(
      message,
      type: AnimatedSnackBarType.info,
      desktopSnackBarPosition: DesktopSnackBarPosition.bottomRight,
      duration: const Duration(seconds: 4),
    ).show(context);
  }
}
