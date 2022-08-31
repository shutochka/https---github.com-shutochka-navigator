import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Set<String> list1 = {};

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Гениальные идеи",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: 250,
              margin: const EdgeInsets.all(20),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onSubmitted: (String str) {
                  list1.add(str);
                  setState(() {});
                },
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: list1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(30),
                    child: ListTile(
                      title: Center(
                        child: Text(
                          list1.elementAt(index),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/details',
                          arguments: list1.elementAt(index),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
