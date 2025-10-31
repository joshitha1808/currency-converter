import 'package:currency_converter/pages/another_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int cost = 2359;

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
                  Container(
                    height: 200,
                    width: double.maxFinite,
                    decoration: BoxDecoration(),
                    child: Image.asset("assets/room.jpg"),
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hotel Yuvraj Deluxe",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.star_rounded, color: Colors.amber, size: 16),
                      Icon(Icons.star_rounded, color: Colors.amber, size: 16),
                      Icon(Icons.star_rounded, color: Colors.amber, size: 16),
                    ],
                  ),
                  Text(
                    "Vijayawada",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent.shade100.withValues(
                            alpha: 0.25,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "7.0",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text("Very Good", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 8),
                      Text("67 Ratings", style: TextStyle(color: Colors.grey)),
                      Spacer(),
                      Text(
                        r"$2384",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  BackButton(),
                  ElevatedButton(
                    onPressed: () {
                      printName("JOSHITHA");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.blue.shade300.withValues(
                        alpha: 0.25,
                      ),
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
                        borderRadius: BorderRadiusGeometry.circular(6),
                      ),
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.blue.shade300.withValues(
                        alpha: 0.25,
                      ),
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
