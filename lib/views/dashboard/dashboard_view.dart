import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/adaptive_layout.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_adaptive_widgets/desktop_dashboard_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopDashboardBody(),
      ),
    );
  }
}
