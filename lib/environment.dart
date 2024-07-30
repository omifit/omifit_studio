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
    WidgetsFlutterBinding.ensureInitialized();
    GoRouter.optionURLReflectsImperativeAPIs = true;
    await SharedPreferenceService.init();
    setPathUrlStrategy();
    PWAInstall().setup(installCallback: () {
      print('App installed');
    });
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }
}
