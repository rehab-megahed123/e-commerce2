import 'package:e_commerce_proj2/home/big_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> names = <String>['s', 's', 's', 's', 's'];

  int _currentIndex = 0;
  void OnTapTapped(
    int index,
  ) {
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
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
                        color: Colors.black),
                  ),
                  /* height: 60,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets\images\makeup1.jpg'),
                      )),*/
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
      bottomNavigationBar: BottomNavigationBar(
          onTap: OnTapTapped,
          currentIndex: _currentIndex,
          elevation: 0.4,
          selectedItemColor: const Color(0xfff6e60a),
          unselectedItemColor: const Color(0xfffdfbfb),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('home'),
                backgroundColor: const Color.fromARGB(2000, 205, 166, 203)),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: ('categories'),
                backgroundColor: const Color(0xfff6e60a)),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: ('cart'),
                backgroundColor: const Color.fromARGB(2000, 205, 166, 203)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ('profile'),
                backgroundColor: const Color.fromARGB(2000, 205, 166, 203)),
          ]),
    );
  }
}
