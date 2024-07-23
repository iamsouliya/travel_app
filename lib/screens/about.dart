import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({super.key});

  final List<Developer> developers = [
    Developer(
      name: 'Souliya Thammavong',
      role: 'Project Lead & Senior Developer',
      imageUrl: 'https://example.com/alice.jpg',
    ),
    Developer(
      name: 'Tavanh Lardsachan',
      role: 'UI/UX Designer',
      imageUrl: 'https://example.com/bob.jpg',
    ),
    Developer(
      name: 'Souksakhone Sengaloun',
      role: 'UI/UX Designer',
      imageUrl: 'https://example.com/carol.jpg',
    ),
    Developer(
      name: 'Sitthiphone Sonethongkham',
      role: 'Backend Developer',
      imageUrl: 'https://example.com/david.jpg',
    ),
    Developer(
      name: 'Sipunya Phonepaseuth',
      role: 'QA Engineer',
      imageUrl: 'https://example.com/eva.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Our Team'),
      ),
      body: ListView.builder(
        itemCount: developers.length,
        itemBuilder: (context, index) {
          return DeveloperCard(developer: developers[index]);
        },
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
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(developer.imageUrl),
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
