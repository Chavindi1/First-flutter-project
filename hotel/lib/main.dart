// main.dart
import 'package:flutter/material.dart';
import 'hotel.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    //row1
    final location =
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Text("Choose date"),
      Text("Number of Rooms"),
    ]);
    //row2
    final name =
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Text(
        "12 Dec-22 Dec",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
      ),
      Text(
        "1 Room-2 Adults",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
      ),
    ]);
    //row3
    final filter = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("          530 hotels found"),
    Row(
      children: [
        Text("Filters"),
        IconButton(
          icon: Icon(Icons.filter_list, color: Colors.green,),
          onPressed: () {
            // Handle filters icon tap
            // You can open a filters screen or perform other filter actions
          },
        ),
      ],
    ),
  ],
);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 249, 249, 250),
          title: const Text('Explore'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back icon tap
              // You can navigate to the previous screen or perform other actions
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Handle favorite icon tap
                // You can navigate to a favorites screen or perform other actions
              },
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              icon: Icon(Icons.location_on),
              onPressed: () {
                // Handle location icon tap
                // You can navigate to a location screen or perform other actions
              },
            ),
            
            // Search icon inside a green circle
          ],
        ),
        body: SafeArea(
          child: Container(
            color: Color.fromARGB(255, 221, 219, 219),
            child: ListView(
              children: [
                // Search bar and search icon in one row
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Colombo',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          onChanged: (value) {
                            // Handle search text changes
                            // You can filter the list based on the search text
                          },
                        ),
                      ),
                      // Search icon inside a green circle
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.search, color: Colors.white),
                          onPressed: () {
                            // Handle search icon tap
                            // You can open a search screen or perform other search actions
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [location, name,SizedBox(height: 20,)],
                ),
                Container(
                  color: Colors.white, // Set the background color of Hotel1 to white
                  child:
                Column(
                  children: [SizedBox(height: 5,),filter,],
                ),),
                Container(
                  color: Colors.white, // Set the background color of Hotel1 to white
                  child: 
                  Hotel1(
                    backgroundimagepath: 'hotel_1.jpg',
                    hotelname: 'gallface Hotel',
                    price: 'USD 150',
                    location: 'near gallface',
                    distance: '3km to city',
                    per: 'per night',
                    rate: '370 Reviews',
                  ),
                ),
                Container(
                  color: Colors.white, // Set the background color of Hotel1 to white
                  child:
                Hotel2(
                  backgroundimagepath: 'Hotel_2.jpg',
                  hotelname: 'Araliya sevana',
                  price: 'USD 120',
                  location: 'near havelock city',
                  distance: '1km to city',
                  per: 'per night',
                  rate: '70 Reviews',
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
