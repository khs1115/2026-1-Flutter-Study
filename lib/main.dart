import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.lightBlueAccent)),
      home: const MyHomePage(title: '안녕하세요'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

          Text('김현수',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(40), // 둥글기 정도
              child: Image.asset('KakaoTalk_20260113_113643883.jpg', scale: 1.5, ),
            )
        ,

        SizedBox(height: 10,),
        Text('자기소개', style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xAB98C7FF),),
          child: Text(
              '안녕하세요 저는 국민대학교 다니는 김현수 입니다 \n 현재 동아리 KOSS를 다니고 있으며, 플러터를 공부중입니다. \n 하고있는 스터디로는 플러터, 자료구조 파기초 입니다'
          ),

        ),


        Divider(indent: 150,
          endIndent: 150,),
        Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center
          ,children: [Icon(Icons.flag, size: 50,),
          Icon(Icons.h_mobiledata_outlined, size: 50),
          Icon(Icons.insert_chart, size: 50)],),
      )

      ],
    ),)
    ,
    );
  }
}
