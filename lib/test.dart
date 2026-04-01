

import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('안녕하세요')),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '안녕하세요~',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              '헬로우~',
              style: TextStyle(
                fontSize: 60,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, size: 50),
                SizedBox(width: 15),
                Text(
                  '인간',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text('안녕하세요~'),
            ),
            Image.asset('assets/1.png', scale:5,),
            TextFormField(decoration: InputDecoration(hintText: '안녕하세요'),),
            const SizedBox(height: 100,),
            ElevatedButton(onPressed: () => const {}, child: const Text('버튼'))

          ],
        ),
      ),
    );
  }
}
