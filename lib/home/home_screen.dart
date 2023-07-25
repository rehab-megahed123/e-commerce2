import 'package:e_commerce_proj2/home/big_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> names = <String>['s', 's', 's', 's', 's'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(2000, 205, 166, 203),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: const Color(0xfff6e60a),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              itemCount: names.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Column(children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(2000, 205, 166, 203),
                      ),
                      height: 60,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets\images\makeup1.jpg'),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  BigText(text: names[index])
                ]);
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
            backgroundColor: const Color.fromARGB(2000, 205, 166, 203)),
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_rounded),
            label: ('Card'),
            backgroundColor: const Color(0xfff6e60a)),
        BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: ('wallet'),
            backgroundColor: const Color.fromARGB(2000, 205, 166, 203)),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Profile'),
            backgroundColor: const Color(0xfff6e60a)),
      ]),
    );
  }
}
