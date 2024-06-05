import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/signin/signin_view.dart';
import 'package:omifit/view/auth/signup/signup_view.dart';
import 'package:omifit/view/auth/verify/verify_view.dart';
import 'package:omifit/view/home/guidance/guidance_details/guidance_details_view.dart';
import 'package:omifit/view/home/home_view.dart';
import 'package:omifit/view/profile/profile_view.dart';
import 'package:omifit/view/splash/splash_view.dart';

enum AppRoute {
  splash,
  signin,
  signup,
  verify,
  home,
  search,
  profile,
  editProfile,
  guidanceDetails
}

final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/signin',
    name: AppRoute.signin.name,
    builder: (context, state) => const SigninView(),
  ),
  GoRoute(
    path: '/signup',
    name: AppRoute.signup.name,
    builder: (context, state) => const SignupView(),
  ),
  GoRoute(
    path: '/verify',
    name: AppRoute.verify.name,
    builder: (context, state) => const VerifyView(),
  ),
  GoRoute(
    path: '/profile',
    name: AppRoute.profile.name,
    builder: (context, state) => const ProfileView(),
  ),

  GoRoute(
    path: '/home',
    name: AppRoute.home.name,
    builder: (context, state) => const HomeView(),
  ),
   GoRoute(
    path: '/guidanceDetails',
    name: AppRoute.guidanceDetails.name,
    builder: (context, state) => const GuidanceDetailsView(),
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
