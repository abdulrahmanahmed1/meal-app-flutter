import 'package:flutter/material.dart';
import '../models/meals.dart';
import '../widget/main_drawer.dart';
import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabScreen extends StatefulWidget {
  // list of favorite meals
  final List<Meals> favoriteMeals;
  // construct for List favorite meals
  TabScreen(this.favoriteMeals);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  // list of map of which page user select
  List<Map<String, Object>> _page;

  // run as static method and take widget.
  void initState(){
    _page = [
      {
        'page':CategoriesScreen(),
        'title':'Category'
      },
      {
        'page':FavoritesScreen(widget.favoriteMeals),
        'title':'Favorites'
      }
    ];
    super.initState();
  }
  
  // this is index to control _page list
  int _selectedPageIndex = 0;

  void _selectPage(int value){
    setState(() {
      _selectedPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // screen
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(_page[_selectedPageIndex]['title']),
      ),

      body: _page[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        items: [
          // first item of category page
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
