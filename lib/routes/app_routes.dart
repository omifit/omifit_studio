import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/signin/signin_view.dart';
import 'package:omifit/view/auth/signup/signup_view.dart';
import 'package:omifit/view/home/home_view.dart';
import 'package:omifit/view/home/search/search_view.dart';
import 'package:omifit/view/splash/splash_view.dart';

enum AppRoute {
  splash,
  signin,
  signup,
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
    builder: (context, state) => const SignInView(),
    // pageBuilder: (context, state) => CustomTransitionPage<void>(
    //   key: state.pageKey,
    //   transitionDuration: const Duration(milliseconds: 500),
    //   barrierColor: lightBlack,
    //   child: const SignInView(),
    //   transitionsBuilder: (context, animation, secondaryAnimation, child) =>
    //       FadeTransition(
    //     opacity: animation,
    //     child: child,
    //   ),
    // ),
  ),
  GoRoute(
    path: '/auth/signup',
    name: AppRoute.signup.name,
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: '/dashboard',
    name: AppRoute.home.name,
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: '/search',
    name: AppRoute.search.name,
    pageBuilder: (context, state) => CustomTransitionPage<void>(
      key: state.pageKey,
      transitionDuration: const Duration(milliseconds: 150),
      reverseTransitionDuration: const Duration(milliseconds: 150),
      barrierColor: lightBlack,
      child: const SearchView(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: Tween<Offset>(
                begin: const Offset(0, 0.2), end: const Offset(.0, .0))
            .animate(animation),
        child: child,
      ),
    ),
  ),
];
