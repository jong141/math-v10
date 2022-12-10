import 'package:flutter/material.dart';
import 'Equation page.dart';
import 'calculator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [Equationpage(), calculator(),];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged:_onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[


        BottomNavigationBarItem(
          icon: Icon(
              Icons.assistant,
          ),
          label: 'EQ Page',
        ),

        BottomNavigationBarItem(
            icon: Icon(
                Icons.calculate,
            ),
            label: 'Calculator Page'
        ),
      ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        onTap: _onItemTapped,
    ),
  );
}
}