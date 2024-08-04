import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/signin/signin_view.dart';
import 'package:omifit/view/auth/signup/signup_view.dart';
import 'package:omifit/view/auth/verify/verify_view.dart';
import 'package:omifit/view/home/guidance/guidance_details/guidance_details_view.dart';
import 'package:omifit/view/home/home_view.dart';
import 'package:omifit/view/home/member/member_details/member_details_view.dart';
import 'package:omifit/view/org_details/org_details_view.dart';
import 'package:omifit/view/profile/dialog/edit/editprofile_view.dart';
import 'package:omifit/view/profile/dialog/edit/update_phone_view.dart';
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
  updatePhone,
  guidanceDetails,
  memberDetails,
  organizationDetails
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
    path: '/verify/:isLogin',
    name: AppRoute.verify.name,
    builder: (context, state) => VerifyView(
        isLogin: state.pathParameters['isLogin'] == 'true' ? true : false),
  ),
  GoRoute(
    path: '/profile/:isBack',
    name: AppRoute.profile.name,
    builder: (context, state) => ProfileView(
        isBack: state.pathParameters['isBack'] == 'true' ? true : false),
  ),
  GoRoute(
    path: '/editProfile',
    name: AppRoute.editProfile.name,
    builder: (context, state) => const EditProfileDetailView(),
  ),
  GoRoute(
    path: '/updatePhone',
    name: AppRoute.updatePhone.name,
    builder: (context, state) => const UpdatePhoneView(),
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
  GoRoute(
    path: '/memberDetails',
    name: AppRoute.memberDetails.name,
    builder: (context, state) => const MemberDetailsView(),
  ),
  GoRoute(
    path: '/organizationDetails',
    name: AppRoute.organizationDetails.name,
    builder: (context, state) => const OrgDetailsView(),
  ),
];
