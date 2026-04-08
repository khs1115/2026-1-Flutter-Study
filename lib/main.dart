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
      home: const InstaClone(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
    );
  }
}

class InstaClone extends StatelessWidget {
  const InstaClone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [HesderSection(), StorySection(),PostSection(),SizedBox(height: 20,),PostSection()]),
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home), label: ' '),
          BottomNavigationBarItem(icon:Icon(Icons.home), label: ' '),
          BottomNavigationBarItem(icon:Icon(Icons.home), label: ' '),
          BottomNavigationBarItem(icon:Icon(Icons.home), label: ' '),
          BottomNavigationBarItem(icon:Icon(Icons.home), label: ' '),
        ],
      ),
    );
  }
}

class HesderSection extends StatelessWidget {
  const HesderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.add, color: Colors.black, size: 30),
          Text(
            'Instagram',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(Icons.bookmark_border, color: Colors.black, size: 28),
              SizedBox(width: 16),
              Icon(Icons.favorite_border, color: Colors.black, size: 28),
            ],
          ),
        ],
      ),
    );
  }
}

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  Widget StoryItem(String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Column(
        children: [
          const CircleAvatar(radius: 32, backgroundColor: Colors.grey),
          const SizedBox(height: 12),
          Text(name, style: const TextStyle(color: Colors.black, fontSize: 13)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            StoryItem('내 스토리'),
            StoryItem('hyeonsu2373'),
            StoryItem('half_1313'),
            StoryItem('jeryo_0'),
            StoryItem('jimin._.0425'),
            StoryItem('내 스토리'),
            StoryItem('hyeonsu2373'),
            StoryItem('half_1313'),
            StoryItem('jeryo_0'),
            StoryItem('jimin._.0425'),
            StoryItem('내 스토리'),
            StoryItem('hyeonsu2373'),
            StoryItem('half_1313'),
            StoryItem('jeryo_0'),
            StoryItem('jimin._.0425'),
          ],
        ),
      ),
    );
  }
}

class PostSection extends StatelessWidget {
  const PostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: Row(children: [CircleAvatar(radius: 18, backgroundColor: Colors.grey),SizedBox(width: 10,),
          Expanded(child: Text('hyeonsu', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),)),
          Icon(Icons.more_vert, color: Colors.black,)]),
        ),

        Image.network( 'https://picsum.photos/500/400',
          width: double.infinity, height: 420,fit: BoxFit.cover,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(children: [Icon(Icons.favorite_border, color: Colors.black),
          SizedBox(width: 12,),
          Icon(Icons.mode_comment_outlined, color: Colors.black),
          SizedBox(width: 12,),
          Icon(Icons.send_outlined, color: Colors.black,)],),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('좋아요 : 200개',style: TextStyle(color: Colors.black,)),
        )

        
      ],

    );
  }
}
