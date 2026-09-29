import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // 지정한 방향에만 마진이나 패딩을 적용
              // margin: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(left: 10, top: 10),
              // 4방향 모든 부분에 마진/패딩을 적용
              padding: const EdgeInsets.all(0.0),
              color: Colors.yellow,
              // width: 300, //크기를 지정하지 않으면 부모의 크기
              height: 100, // 크기를 지정하지 않으면 자식의 크기
              alignment: Alignment.topLeft,
              child: const Text(
                '홍길동',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(80.0), //자식과의 패딩으로 크기가 결정됨
              alignment: Alignment.center,
              // 컨테이너의 모양을 결정하는 속성
              decoration: const BoxDecoration(
                // 박스모양을 원으로 표현
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Text(
                '전우치',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
              width: 400, // 크기를 지정하지 않으면 부모의 크기
              height: 100, // 크기를 지정하지 않으면 자식의 크기
              // 자식을 우측하단으로 정렬
              alignment: Alignment.bottomRight,
              // 박스의 모양을 사각형으로 설정
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.brown,
              ),
              child: const Text(
                '손오공',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),

            Container(
              width: 100.0,
              height: 40.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/300x100.png'),
                ),
              ),
              child: TextButton(
                child: const Text(''),
                onPressed: () => _onClick(1),
              ),
            ),
            InkWell(
              onTap: () => _onClick(2),
              child: Ink.image(
                image: const AssetImage('assets/images/300x100.png'),
                width: 100.0,
                height: 40.0,
                // fit: BoxFit.fill
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onClick(int num) {
    debugPrint('Hello~ $num');
  }
}
