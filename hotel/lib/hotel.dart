// hotel.dart
import 'package:flutter/material.dart';

class Hotel1 extends StatelessWidget {
  final String backgroundimagepath;
  final String hotelname;
  final String price;
  final String location;
  final String distance;
  final String per;
  final String rate;

  const Hotel1({
    required this.backgroundimagepath,
    required this.hotelname,
    required this.price,
    required this.location,
    required this.distance,
    required this.per,
    required this.rate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                backgroundimagepath,
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.green),
                  onPressed: () {
                    // Handle favorite button tap
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hotelname,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(location),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.green),
                        Text(distance),
                      ],
                    ),
                    Text(per),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.green[500]),
                        Icon(Icons.star, color: Colors.green[500]),
                        Icon(Icons.star, color: Colors.green[500]),
                        const Icon(Icons.star_border_outlined,
                            color: Colors.green),
                        const Icon(Icons.star_border_outlined,
                            color: Colors.green),
                      ],
                    ),
                    Text(rate),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Hotel2 extends StatelessWidget {
  final String backgroundimagepath;
  final String hotelname;
  final String price;
  final String location;
  final String distance;
  final String per;
  final String rate;

  const Hotel2({
    required this.backgroundimagepath,
    required this.hotelname,
    required this.price,
    required this.location,
    required this.distance,
    required this.per,
    required this.rate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                backgroundimagepath,
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: IconButton(
                  icon: Icon(Icons.favorite_border, color: const Color.fromARGB(255, 4, 14, 4)),
                  onPressed: () {
                    // Handle favorite button tap
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hotelname,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(location),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Color.fromARGB(255, 207, 61, 17)),
                        Text(distance),
                      ],
                    ),
                    Text(per),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Color.fromARGB(255, 48, 143, 135)),
                        Icon(Icons.star, color: Color.fromARGB(255, 33, 112, 108)),
                        Icon(Icons.star, color: Color.fromARGB(255, 48, 143, 135)),
                        const Icon(Icons.star_border_outlined,
                            color: Color.fromARGB(255, 48, 143, 135)),
                        const Icon(Icons.star_border_outlined,
                            color: Color.fromARGB(255, 48, 143, 135)),
                      ],
                    ),
                    Text(rate),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
