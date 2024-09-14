import 'package:omifit/app.dart';
import 'package:omifit/services/shared_preference_service.dart';
import 'package:omifit/utils/utils.dart';
import 'package:pwa_install/pwa_install.dart';
import 'package:url_strategy/url_strategy.dart';

enum EnvType { dev, stag, prod }

class Environment {
  Environment() {
    _init();
  }

  Future<void> _init() async {
    setPathUrlStrategy();
    WidgetsFlutterBinding.ensureInitialized();
    GoRouter.optionURLReflectsImperativeAPIs = true;
    await SharedPreferenceService.init();
    PWAInstall().setup(installCallback: () {});
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }
}
