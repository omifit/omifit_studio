import 'package:omifit/utils/utils.dart';

final homeViewModelProvider = ChangeNotifierProvider((ref) => HomeViewModel());

class HomeViewModel extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  GlobalKey<ScaffoldState> get key => _key;
  int selectedIndex = 0;

  void openDrawer() {
    _key.currentState!.openDrawer();
  }

  void closeDrawer() {
    _key.currentState!.openEndDrawer();
  }

  void onDestinationSelected(int index, BuildContext context) {
    selectedIndex = index;
    Responsive.isMobile(context)
        ? closeDrawer()
        : Future.delayed(const Duration(milliseconds: 110), () {
            closeDrawer();
          });
    notifyListeners();
  }
}
