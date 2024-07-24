import 'package:flutter/material.dart';
import 'package:travel_app/screens/trip_details.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bookmark'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildTopTripsSection(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopTripsSection(BuildContext context) {
    const expImages = [
      'assets/images/tomas-nozina.jpg',
      'assets/images/david-vargas.jpg',
      'assets/images/iako.jpg',
    ];
    return Column(
      children: [
        _buildTripCard(context, 'Spain', '', expImages[0]),
        _buildTripCard(context, 'Stockholm', '', expImages[1]),
        _buildTripCard(context, 'Madagascar', '', expImages[2]),
      ],
    );
  }

  Widget _buildTripCard(
      BuildContext context, String city, String date, String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: Image.asset(imagePath).image,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(city,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          // add bookmark icon on top right

          const Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: null,
              icon: Icon(Icons.bookmark, color: Colors.white),
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TripDetails(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
