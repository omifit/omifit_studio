import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/signin/signin_view.dart';
import 'package:omifit/view/auth/signup/signup_view.dart';
import 'package:omifit/view/auth/verify/verify_view.dart';
import 'package:omifit/view/home/home_view.dart';
import 'package:omifit/view/splash/splash_view.dart';

enum AppRoute {
  splash,
  signin,
  signup,
  verify,
  home,
  search,
}

final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/auth/signin',
    name: AppRoute.signin.name,
    builder: (context, state) => const SigninView(),
  ),
  GoRoute(
    path: '/auth/signup',
    name: AppRoute.signup.name,
    builder: (context, state) => const SignupView(),
  ),
  GoRoute(
    path: '/auth/verify',
    name: AppRoute.verify.name,
    builder: (context, state) => const VerifyView(),
  ),

  GoRoute(
    path: '/dashboard',
    name: AppRoute.home.name,
    builder: (context, state) => const HomeView(),
  ),
  // GoRoute(
  //   path: '/search',
  //   name: AppRoute.search.name,
  //   pageBuilder: (context, state) => CustomTransitionPage<void>(
  //     key: state.pageKey,
  //     transitionDuration: const Duration(milliseconds: 150),
  //     reverseTransitionDuration: const Duration(milliseconds: 150),
  //     barrierColor: lightBlack,
  //     child: const SearchView(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) =>
  //         SlideTransition(
  //       position: Tween<Offset>(
  //         begin: const Offset(0, 0.2),
  //       ).animate(animation),
  //       child: child,
  //     ),
  //   ),
];
