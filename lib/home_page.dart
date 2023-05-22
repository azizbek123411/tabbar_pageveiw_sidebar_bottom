import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'my_side_bar.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  late int _selectIndex;

  @override
  void initState() {
// TODO :implement initState
    super.initState();
    _pageController = PageController();
    _selectIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MySideBar(),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.black,
                  Colors.blue,
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.red, Colors.blueAccent]),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.lightGreen,
                  Colors.orange,
                ])),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: const Color(0xFF1E2A34),
        currentIndex: _selectIndex,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          });
        },
        items: [
          SalomonBottomBarItem(
              icon: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              selectedColor: Colors.lightGreen),
          SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Search"),
              selectedColor: Colors.red),
          SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_outline),
              title: const Text('Favourites'),
              selectedColor: Colors.orange),
        ],
      ),
    );
  }
}
