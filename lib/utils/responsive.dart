import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  final Widget tv;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    required this.tv,
  }) : super(key: key);

  static List<Breakpoint> breakpoints = [
    const Breakpoint(start: 0, end: 450, name: 'MOBILE'),
    const Breakpoint(start: 451, end: 800, name: 'TABLET'),
    const Breakpoint(start: 801, end: 1920, name: 'DESKTOP'),
    const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
  ];
  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isMobile;
  static bool isTablet(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isTablet;
  static bool isDesktop(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isDesktop;
  static bool is4k(BuildContext context) =>
      ResponsiveBreakpoints.of(context).largerThan(DESKTOP);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 450) {
      return mobile;
    } else if (size.width >= 450 && size.width < 800) {
      return tablet ?? mobile;
    } else if (size.width >= 800 && size.width < 1920) {
      return desktop;
    } else {
      return tv;
    }
  }
}

class ResponsiveDashboard extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  final Widget tv;

  const ResponsiveDashboard({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    required this.tv,
  }) : super(key: key);

  static List<Breakpoint> breakpoints = [
    const Breakpoint(start: 0, end: 450, name: 'MOBILE'),
  ];

  static bool isMobile(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isMobile;
  static bool isTablet(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isTablet;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 900) {
      return mobile;
    } else if (size.width >= 900 && size.width < 1500) {
      return tablet ?? mobile;
    } else if (size.width >= 1500 && size.width < 1920) {
      return desktop;
    } else {
      return tv;
    }
  }
}

class ResponsiveAttendance extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget? tv;

  const ResponsiveAttendance({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    this.tv,
  }) : super(key: key);

  static List<Breakpoint> breakpoints = [
    const Breakpoint(start: 0, end: 450, name: 'MOBILE'),
    const Breakpoint(start: 451, end: 1000, name: 'TABLET'),
    const Breakpoint(start: 1001, end: 1920, name: 'DESKTOP'),
    const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
  ];
  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isMobile;
  static bool isTablet(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isTablet;
  static bool isDesktop(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isDesktop;
  static bool is4k(BuildContext context) =>
      ResponsiveBreakpoints.of(context).largerThan(DESKTOP);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 450) {
      return mobile;
    } else if (size.width >= 450 && size.width < 1000) {
      return tablet ?? mobile;
    } else if (size.width >= 1000 && size.width < 1920) {
      return desktop;
    } else {
      return desktop;
    }
  }
}

class ResponsiveMember extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget? tv;

  const ResponsiveMember({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    this.tv,
  }) : super(key: key);

  static List<Breakpoint> breakpoints = [
    const Breakpoint(start: 0, end: 450, name: 'MOBILE'),
    const Breakpoint(start: 451, end: 1000, name: 'TABLET'),
    const Breakpoint(start: 1001, end: 1920, name: 'DESKTOP'),
    const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
  ];
  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isMobile;
  static bool isTablet(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isTablet;
  static bool isDesktop(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isDesktop;
  static bool is4k(BuildContext context) =>
      ResponsiveBreakpoints.of(context).largerThan(DESKTOP);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 450) {
      return mobile;
    } else if (size.width >= 450 && size.width < 1000) {
      return tablet ?? mobile;
    } else if (size.width >= 1000 && size.width < 1920) {
      return desktop;
    } else {
      return desktop;
    }
  }
}

class ResponsiveMemberDetails extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget? tv;

  const ResponsiveMemberDetails({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    this.tv,
  }) : super(key: key);

  static List<Breakpoint> breakpoints = [
    const Breakpoint(start: 0, end: 450, name: 'MOBILE'),
    const Breakpoint(start: 451, end: 1000, name: 'TABLET'),
    const Breakpoint(start: 1001, end: 1300, name: 'DESKTOP'),
    const Breakpoint(start: 1301, end: double.infinity, name: '4K'),
  ];
  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isMobile;
  static bool isTablet(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isTablet;
  static bool isDesktop(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isDesktop;
  static bool is4k(BuildContext context) =>
      ResponsiveBreakpoints.of(context).largerThan(DESKTOP);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 450) {
      return mobile;
    } else if (size.width >= 450 && size.width < 1300) {
      return tablet ?? mobile;
    } else if (size.width >= 1300 && size.width < 1920) {
      return desktop;
    } else {
      return desktop;
    }
  }
}

class ResponsiveStaff extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget? tv;

  const ResponsiveStaff({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    this.tv,
  }) : super(key: key);

  static List<Breakpoint> breakpoints = [
    const Breakpoint(start: 0, end: 450, name: 'MOBILE'),
    const Breakpoint(start: 451, end: 1000, name: 'TABLET'),
    const Breakpoint(start: 1001, end: 1920, name: 'DESKTOP'),
    const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
  ];
  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isMobile;
  static bool isTablet(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isTablet;
  static bool isDesktop(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isDesktop;
  static bool is4k(BuildContext context) =>
      ResponsiveBreakpoints.of(context).largerThan(DESKTOP);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 450) {
      return mobile;
    } else if (size.width >= 450 && size.width < 1000) {
      return tablet ?? mobile;
    } else if (size.width >= 1000 && size.width < 1920) {
      return desktop;
    } else {
      return desktop;
    }
  }
}

class ResponsiveDiscount extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget? tv;

  const ResponsiveDiscount({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    this.tv,
  }) : super(key: key);

  static List<Breakpoint> breakpoints = [
    const Breakpoint(start: 0, end: 450, name: 'MOBILE'),
    const Breakpoint(start: 451, end: 1000, name: 'TABLET'),
    const Breakpoint(start: 1001, end: 1920, name: 'DESKTOP'),
    const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
  ];
  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isMobile;
  static bool isTablet(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isTablet;
  static bool isDesktop(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isDesktop;
  static bool is4k(BuildContext context) =>
      ResponsiveBreakpoints.of(context).largerThan(DESKTOP);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 450) {
      return mobile;
    } else if (size.width >= 450 && size.width < 1000) {
      return tablet ?? mobile;
    } else if (size.width >= 1000 && size.width < 1920) {
      return desktop;
    } else {
      return desktop;
    }
  }
}
