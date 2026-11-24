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
      title: 'My Social Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showImageSourceDialog(BuildContext context, String title, String path) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(path, height: 200, fit: BoxFit.cover),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.link, size: 18, color: Colors.blue),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    'ที่มารูป: $path',
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('ปิด'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'txlrt_qq',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => _showImageSourceDialog(
                      context,
                      'รูปโปรไฟล์หลัก',
                      'assets/profile.jpg',
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/profile.jpg',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.white,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          '24',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('โพสต์'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          '178M',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('ผู้ติดตาม'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          '598',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('กำลังติดตาม'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'methus ketsupasawam',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'ชอบฟังเพลง ชอบเที่ยว 🎧✈️',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    'ใช้ชีวิตให้เต็มที่ ไปให้สุดทุกเส้นทาง 😎',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('ติดตาม'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('ข้อความ'),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.grid_on, size: 25),
                Icon(
                  Icons.person_outline,
                  size: 25,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => _showImageSourceDialog(
                      context,
                      'รูปโพสต์ที่ 1 (รถ Giorno)',
                      'assets/post1.jpg',
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        'assets/post1.jpg',
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _showImageSourceDialog(
                      context,
                      'รูปโพสต์ที่ 2 (แต่งตัว/เดินทาง)',
                      'assets/post2.jpg',
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        'assets/post2.jpg',
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _showImageSourceDialog(
                      context,
                      'รูปโพสต์ที่ 3 (วิวบนเครื่องบิน)',
                      'assets/post3.jpg',
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        'assets/post3.jpg',
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
