import 'package:omifit_studio/data/home/member/model/get_memberlist_model.dart';
import 'package:omifit_studio/data/home/staff/model/get_stafflist_model.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/auth/signin/signin_view.dart';
import 'package:omifit_studio/view/auth/signup/signup_view.dart';
import 'package:omifit_studio/view/auth/verify/verify_view.dart';
import 'package:omifit_studio/view/organization/member/member_details/member_details_view.dart';
import 'package:omifit_studio/view/organization/organization_view.dart';
import 'package:omifit_studio/view/organization/orgdetails/orgdetails_view.dart';
import 'package:omifit_studio/view/organization/staff/staff_details/staff_details_view.dart';
import 'package:omifit_studio/view/profile/profile_view.dart';
import 'package:omifit_studio/view/splash/splash_view.dart';

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
    builder: (context, state) {
      final memberFilter = state.extra as GetMemberListReq?;
      return MemberDetailsView(
        uid: state.pathParameters['uid']!,
        memberfilter: memberFilter,
      );
    },
  ),
  GoRoute(
    path: '/staffDetails/:uid',
    name: AppRoute.staffDetails.name,
    builder: (context, state) {
      final staffFilter = state.extra as GetStaffListReq?;
      return StaffDetailsView(
        uid: state.pathParameters['uid']!,
        stafffilter: staffFilter,
      );
    },
  ),
  GoRoute(
    path: '/organizationDetails',
    name: AppRoute.organizationDetails.name,
    builder: (context, state) => const OrgDetailsView(),
  ),
];
