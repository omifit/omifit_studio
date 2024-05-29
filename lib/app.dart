// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omifit/provider/router_provider.dart';
import 'package:omifit/provider/theme_provider.dart';
import 'package:omifit/utils/responsive.dart';
import 'package:omifit/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    final themeManager = ref.watch(themeProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        routeInformationParser: goRouter.routeInformationParser,
        routerDelegate: goRouter.routerDelegate,
        routeInformationProvider: goRouter.routeInformationProvider,
        backButtonDispatcher: RootBackButtonDispatcher(),
        theme: AppThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1)),
            child: ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: Responsive.breakpoints,
            ),
          );
        },
      ),
    );
  }
}
