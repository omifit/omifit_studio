import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omifit/app.dart';
import 'package:omifit/services/shared_preference_service.dart';
import 'package:url_strategy/url_strategy.dart';

enum EnvType { dev, stag, prod }

class Environment {
  Environment() {
    _init();
  }

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SharedPreferenceService.init();
    setPathUrlStrategy();
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }
}
