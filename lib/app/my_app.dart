import 'package:flutter/material.dart';

import '../ui/views/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive Demo',
      home: HomeView(),
    );
  }
}
