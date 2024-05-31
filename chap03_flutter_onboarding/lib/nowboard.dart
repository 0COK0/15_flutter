import 'package:chap03_flutter_onboarding/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('현재의 나'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('assets/images/zo1.webp'),
            ),
            SizedBox(height: 20),
            Text(
              '현재의 나',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 35),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              '시작은 호덜덜 거리면서 떨리는 마음으로 \n 긴장감을 가지고 있는 모습이지만 \n 의지만큼은 최선을 다 해야 겠다는 모습 입니다.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                prefs.setBool('isOnboarded', true);
                // pushReplacement : 현재 화면이 스택에서 제거 되고 새 화면으로 대체
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Next Page'),
            )
          ],
        ),
      ),
    );
  }
}
