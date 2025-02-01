import 'package:flutter/material.dart';
import 'package:responsive/utils/size_config.dart';
import 'package:responsive/widgets/dashboard_tablet_layout/dashboard_tablet_layout.dart';
import 'package:responsive/views/adaptive_layout_widget.dart';
import 'package:responsive/widgets/drawer/dashboard_desktop_layout.dart';

import '../widgets/dashboard_mobile_layout/dashboard_mobile_layout.dart';
import '../widgets/drawer/custom_drawer.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
  //  SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey ,
      drawer: MediaQuery.of(context).size.width <  SizeConfig.tablet ? const Drawer(
        child: CustomDrawer(),
      ) : null,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet ? AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
      ) : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileBuilder: (context) => const DashboardMobileLayout(),
        tabletBuilder: (context) => const DashboardTabletLayout(),
        desktopBuilder: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
