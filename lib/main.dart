import 'package:flutter/material.dart';
import 'package:responsive/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
        enabled: true,
        builder: (context) {
          return const MyApp();
        }),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const DashBoardView(),
    );
  }
}
