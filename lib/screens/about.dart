import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({super.key});
  final List<Developer> developers = [
    Developer(
      name: 'ທ້າວ ສຸລິຍາ ທຳມະວົງ',
      role: 'Project Lead & Developer',
      imageUrl: 'assets/images/members/noy.jpeg',
    ),
    Developer(
      name: 'ນາງ ຕາວັນ ລາດຊະຈັນ',
      role: 'UX/UI Designer',
      imageUrl: 'assets/images/members/tavanh.jpeg',
    ),
    Developer(
      name: 'ທ້າວ ສຸກສາຄອນ ແສງອະລຸນ',
      role: 'UX/UI Designer',
      imageUrl: 'assets/images/members/souk.jpeg',
    ),
    Developer(
      name: 'ທ້າວ ສິດທິພອນ ສອນທອງຄຳ',
      role: 'Information Finder',
      imageUrl: 'assets/images/members/note.jpeg',
    ),
    Developer(
      name: 'ທ້າວ ສີປັນຍາ ພອນປະເສິດ',
      role: 'Information Finder',
      imageUrl: 'assets/images/members/cola.jpeg',
    ),
  ];

  final _aboutApp =
      'ແອັບພິເຄຊັ້ນນິ້ເປັນແອັບທີ່ກ່ຽວກັບການແນະນຳສະຖານທີ່ທ່ອງທ່ຽວຕ່າງໆໃນສປປ ລາວ';
  final _teacherName = 'ອຈ ປອ ສະຫວາດ ໄຊປະດີດ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Teacher',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      Image.asset('assets/images/teacher_savath_pic.jpg').image,
                ),
                const SizedBox(height: 16),
                Text(
                  _teacherName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'About App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(_aboutApp),
            const SizedBox(height: 16),
            const Text(
              'Group Members',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: developers.length,
              itemBuilder: (context, index) {
                return DeveloperCard(developer: developers[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Developer {
  final String name;
  final String role;
  final String imageUrl;

  Developer({required this.name, required this.role, required this.imageUrl});
}

class DeveloperCard extends StatelessWidget {
  final Developer developer;

  const DeveloperCard({super.key, required this.developer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: Image.asset(developer.imageUrl).image,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    developer.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    developer.role,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
