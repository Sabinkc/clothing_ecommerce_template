import 'package:d_and_s/app/constants/text_size.dart';
import 'package:d_and_s/app/modules/add_to_cart/views/added_cart.dart';
import 'package:d_and_s/app/modules/category/views/category_view.dart';
import 'package:d_and_s/app/modules/home/views/home_view.dart';
import 'package:d_and_s/app/modules/shop/views/shop_view.dart';
import 'package:d_and_s/app/modules/user_account/views/user_account_view.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';



class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  // a variable to store the current selected tab. can be used to control PageView
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    CategoryView(),
    ShopView(),
    AddedCart(),
    const UserAccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: MoltenBottomNavigationBar(
          margin: const EdgeInsets.only(top: 5),
          domeCircleColor: Colors.white,
          barColor: Colors.white,
          selectedIndex: _selectedIndex,
          domeHeight: 0,
          onTabChange: (clickedIndex) {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          tabs: [
            MoltenTab(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.home),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: TextSize.small,
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                    ),
                  ),
                ],
              ),
              selectedColor: Colors.black,
            ),
            MoltenTab(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.category),
                  FittedBox(
                    child: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 12, // Maintain the desired font size
                        color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              selectedColor: Colors.black,
            ),
            MoltenTab(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.shop),
                  Text(
                    'Shop',
                    style: TextStyle(
                      // fontSize: ,
                      color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                    ),
                  ),
                ],
              ),
              selectedColor: Colors.black,
            ),
            MoltenTab(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.shopping_cart),
                  Text(
                    'Cart',
                    style: TextStyle(
                      color: _selectedIndex == 3 ? Colors.black : Colors.grey,
                    ),
                  ),
                ],
              ),
              selectedColor: Colors.black,
            ),
            MoltenTab(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.person),
                  Text(
                    'Me',
                    style: TextStyle(
                      color: _selectedIndex == 4 ? Colors.black : Colors.grey,
                    ),
                  ),
                ],
              ),
              selectedColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _selectedIndex = 0;

//   static final List<Widget> _widgetOptions = <Widget>[
//     HomeView(),
//     CategoryView(),
//     ShopView(),
//     AddedCart(),
//     // AddedCart(),
//     const UserAccountView(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Bai Jamjuree',
//       ),
//       home: Scaffold(
//         body: Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.white,
//           type: BottomNavigationBarType.fixed,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.category),
//               label: 'Category',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shop),
//               label: 'Shop',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: 'Cart',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Me',
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.black, // Color for selected item
//           unselectedItemColor: Colors.grey, // Color for unselected items
//           selectedLabelStyle: const TextStyle(
//             color: Colors.black,
//             fontSize: 12, // Reduce text size when selected
//           ),
//           unselectedLabelStyle: const TextStyle(
//             color: Colors.grey,
//             fontSize: 10, // Reduce text size when unselected
//           ),
//           iconSize: 20, // Decrease the size of the icons

//           onTap: _onItemTapped,
//         ),
//       ),
//     );
//   }
// }
