import 'package:flutter/material.dart';
import 'package:firstapp/beranda/beranda_view.dart';
import 'package:firstapp/constant.dart';

class LandingPage extends StatefulWidget{
  @override
  _LandingPageState createState() => new _LandingPageState();
}

// list landing page
class _LandingPageState extends State<LandingPage>{
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
    new BerandaPage(),
    new BerandaPage(),
    new BerandaPage(),
  ];

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  // bottom navigation
  Widget _buildBottomNavigation(){
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: new Text(
              'Beranda',
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.assignment,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.assignment,
              color: Colors.grey,
            ),
            title: new Text('Pesanan'),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.mail,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.mail,
              color: Colors.grey,
            ),
            title: new Text('Inbox'),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: GojekPalette.green,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            title: new Text('Akun'),
          ),
        ],
    );
  }
}