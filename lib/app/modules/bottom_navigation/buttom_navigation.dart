
import 'package:d_and_s/app/modules/add_to_cart/views/added_cart.dart';
import 'package:d_and_s/app/modules/category/views/category_view.dart';
import 'package:d_and_s/app/modules/home/views/home_view.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_view.dart';
import 'package:flutter/material.dart';


// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   // a variable to store the current selected tab. can be used to control PageView
//   int _selectedIndex = 0;
//   static List<Widget> _widgetOptions = <Widget>[
//     HomeView(),
//     CategoryView(),
//     AddedCart(),
//     UserAccountView(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: Theme.of(context).copyWith(
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: Colors.deepPurple,
//         ),
//       ),
//       home: Scaffold(
//         body: Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//         bottomNavigationBar: MoltenBottomNavigationBar(
//           domeCircleColor: AppColors.lightSilver,

//           barColor: Colors.white,
//           selectedIndex: _selectedIndex,
//           domeHeight: 0,
//           // specify what will happen when a tab is clicked
//           onTabChange: (clickedIndex) {
//             setState(() {
//               _selectedIndex = clickedIndex;
//             });
//           },
//           // ansert as many tabs as you like
//           tabs: [
//             MoltenTab(
//               icon: Icon(Icons.home),
//               selectedColor: Colors.black,
//               title: Text(
//                 'Home',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             MoltenTab(
//               icon: Icon(Icons.category), selectedColor: Colors.black,
//               title: Text('Category'),
//               // selectedColor: Colors.yellow,
//             ),
//             MoltenTab(
//               icon: Icon(Icons.shopping_cart), selectedColor: Colors.black,
//               title: Text('Cart'),
//               // selectedColor: Colors.yellow,
//             ),
//             MoltenTab(
//               icon: Icon(Icons.person), selectedColor: Colors.black,
//               title: Text('Me'),
//               // selectedColor: Colors.yellow,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  
  static final List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    CategoryView(),
    AddedCart(),
    // AddedCart(),
     UserAccountView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Me',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black, // Color for selected item
          unselectedItemColor: Colors.grey, // Color for unselected items
          selectedLabelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12, // Reduce text size when selected
          ),
          unselectedLabelStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 10, // Reduce text size when unselected
          ),
          iconSize: 20, // Decrease the size of the icons
        
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
