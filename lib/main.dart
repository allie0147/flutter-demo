import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp2());

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String buttonName = 'Click!!';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // every widget contains arguments
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('타이틀'),
        ),
        body: Center(
            child: SizedBox(
          width: double.infinity, // full width
          height: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoButton(
                  color: Colors.pink,
                  onPressed: () {
                    setState(() {
                      // setState(){} => notice app widget is going to be changed
                      buttonName = 'Clicked~!';
                    });
                  },
                  child: Text(buttonName)),
              CupertinoButton(
                  color: Colors.pink,
                  onPressed: () {
                    setState(() {
                      // setState(){} => notice app widget is going to be changed
                      buttonName = 'Clicked~!';
                    });
                  },
                  child: Text(buttonName)),
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.pink,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 24,
              ),
              label: 'Home',
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
        ),
      ), // home argument
      debugShowCheckedModeBanner: false,
    );
  }
}
