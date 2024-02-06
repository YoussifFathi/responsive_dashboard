import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/adaptive_layout.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_adaptive_widgets/desktop_dashboard_body.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_adaptive_widgets/mobile_dashboard_body.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_adaptive_widgets/tablet_dashboard_body.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/custom_drawer/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: key,
      drawer:  SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
      child: const CustomDrawer()),
      appBar: MediaQuery.sizeOf(context).width < 800 ?AppBar(
        leading: IconButton(onPressed: () {
          key.currentState!.openDrawer();
        }, icon: const Icon(Icons.menu)),
      ) :null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileDashboardBody(),
        tabletLayout: (context) => const TabletDashboardBody(),
        desktopLayout: (context) => const DesktopDashboardBody(),
      ),
    );
  }
}
