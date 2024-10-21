import 'package:omifit/utils/utils.dart';
import 'package:omifit/view/auth/signin/signin_view.dart';
import 'package:omifit/view/auth/signup/signup_view.dart';
import 'package:omifit/view/auth/verify/verify_view.dart';
import 'package:omifit/view/organization/member/add_member/payment_view.dart';
import 'package:omifit/view/organization/member/add_member/plan_picker_view.dart';
import 'package:omifit/view/organization/member/member_details/member_details_view.dart';
import 'package:omifit/view/organization/organization_view.dart';
import 'package:omifit/view/organization/orgdetails/orgdetails_view.dart';
import 'package:omifit/view/organization/staff/staff_details/staff_details_view.dart';
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
  memberDetails,
  staffDetails,
  planpicker,
  payment,
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
    path: '/home',
    name: AppRoute.home.name,
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: '/memberDetails/:uid',
    name: AppRoute.memberDetails.name,
    builder: (context, state) =>
        MemberDetailsView(uid: state.pathParameters['uid']!),
  ),
  GoRoute(
    path: '/staffDetails',
    name: AppRoute.staffDetails.name,
    builder: (context, state) => const StaffDetailsView(),
  ),
  GoRoute(
    path: '/planpicker',
    name: AppRoute.planpicker.name,
    builder: (context, state) => const PlanPickerView(),
  ),
  GoRoute(
    path: '/payment',
    name: AppRoute.payment.name,
    builder: (context, state) => const PaymentView(),
  ),
  GoRoute(
    path: '/organizationDetails',
    name: AppRoute.organizationDetails.name,
    builder: (context, state) => const OrgDetailsView(),
  ),
];
