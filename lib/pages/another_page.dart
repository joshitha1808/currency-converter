import 'package:flutter/material.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key});

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  int count = 100;

  @override
  void initState() {
    super.initState();
    count = 10;
  }

  @override
  void dispose() {
    super.dispose();
    myMontroller.clear();
  }

  TextEditingController myMontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
            ),
            Text(
              "$count",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    count--;
                    setState(() {});
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    count++;
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  
}
