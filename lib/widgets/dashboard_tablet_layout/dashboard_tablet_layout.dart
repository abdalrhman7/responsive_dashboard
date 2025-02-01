import 'package:flutter/material.dart';
import 'package:responsive/widgets/drawer/custom_drawer.dart';
import 'package:responsive/widgets/drawer/dashboard_desktop_layout.dart';
import 'package:responsive/widgets/my_card/my_card_and_transction_history_section.dart';

import '../dashboard_mobile_layout/dashboard_mobile_layout.dart';
import '../income/income_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: DashboardMobileLayout(),
        )),
        SizedBox(width: 32),
      ],
    );
  }
}


