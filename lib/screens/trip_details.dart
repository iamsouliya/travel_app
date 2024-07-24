import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({super.key});
  final _description = '''
Explore the world of photography at Fotografiska Museum, one of Stockholm's most captivating cultural destinations. Founded in 2010 by brothers Jan and Per Broman, Fotografiska is housed in a stunning historic building designed by Ferdinand Boberg in 1906. Originally a customs house, the building now serves as a vibrant hub for contemporary photography.

Fotografiska is renowned for its dynamic exhibitions featuring both renowned and emerging photographers. From iconic portraits to thought-provoking visual narratives, the museum offers a diverse and inspiring experience for art lovers and casual visitors alike.

Beyond the exhibitions, Fotografiska boasts a top-floor restaurant with breathtaking views of Stockholm's waterfront, where you can enjoy sustainable and delicious cuisine. The museum also hosts various events, workshops, and talks, making it a lively center for artistic and cultural exchange.

Whether you're an avid photographer or simply looking to explore something new, Fotografiska Museum is a must-visit destination in Stockholm. Discover the beauty and power of photography in this unique and historic setting.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/jon.jpg',
                fit: BoxFit.cover,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fotografiska Museum Stockholm',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/map_pin.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildIconButton(Icons.directions_car, 'Directions'),
                      _buildIconButton(Icons.call, 'Call'),
                      _buildIconButton(Icons.web, 'Website', _launchURL),
                      _buildIconButton(Icons.share, 'Share'),
                      _buildIconButton(Icons.save, 'Save'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label,
      [VoidCallback? onPressed]) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        ),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  _launchURL() async {
    final Uri url = Uri.parse('https://stockholm.fotografiska.com/sv');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
