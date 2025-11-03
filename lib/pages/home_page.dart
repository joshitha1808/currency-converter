import 'package:currency_converter/pages/another_page.dart';
import 'package:currency_converter/widgets/hotel_card.dart';
import 'package:currency_converter/models/hotel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // horizontal hotel list
                  Container(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: sampleHotels.length,
                      itemBuilder: (context, idx) {
                        final hotel = sampleHotels[idx];
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: HotelCard(hotel: hotel),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 100),
                  BackButton(),
                  ElevatedButton(
                    onPressed: () {
                      printName("JOSHITHA");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.blue.shade300.withOpacity(0.25),
                    ),
                    child: Text("Press me!"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Text("Like"),
                    icon: Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.ac_unit, color: Colors.blue),
                  ),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.blue.shade300.withOpacity(0.25),
                    ),
                    onPressed: () {
                      // NAVIGATE TO ANOTHER PAGE
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (builder) => AnotherPage()),
                      );
                    },
                    child: Text("Go to Another Page"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void printName(String name) {
    debugPrint("Hello $name");
  }
}
