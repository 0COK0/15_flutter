import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'nowboard.dart';
import 'onboarding.dart';

// late : 나중에 값을 꼭 할당해준다는 의미
late SharedPreferences prefs;

void main() async {
  // main()함수에서 async를 쓰려면 필요
  WidgetsFlutterBinding.ensureInitialized();

  // Shared_preferences 인스턴스 생성
  prefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 온보딩 완료 여부 조회
    bool isOnboarded = prefs.getBool('isOnboarded') ?? false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isOnboarded ? HomePage() : FirstScreen(),
    );
  }
}
