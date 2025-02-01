

import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileBuilder, required this.tabletBuilder, required this.desktopBuilder});

  final WidgetBuilder mobileBuilder , tabletBuilder , desktopBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 800) {
          return mobileBuilder(context);
        } else if(constraints.maxWidth < 1200) {
          return tabletBuilder(context);
        } else {
          return desktopBuilder(context);
        }
      },
    );
  }
}
