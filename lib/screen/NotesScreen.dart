import 'package:flutter/material.dart';
import 'package:flutterdemo/strings.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<bool> _whatToBring = [true, false, false, true];
  List<bool> _householdChores = [true, true, true, false, false, false];
  List<bool> _groceryItems = [true, true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              buildChecklist(AppStrings.whatToBring, [
                'Towel',
                'Shoes',
                'Food',
                'Shampoo',
                'Soap',
              ], _whatToBring),
              buildHouseholdChoresChecklist(AppStrings.householdChores, [
                'Feed Dog',
                'Laundry',
                'Fix light bulb',
                'Wash Dishes',
                'Clean Garage',
                'Fix table',
                'Water Plants',
                'Cook Food'
              ]),
              buildChecklist(AppStrings.groceryItems, [
                'Cabbage',
                'Cereals',
                'Meat',
                'Broom',
                'Potatoes'
              ], _groceryItems),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChecklist(String title, List<String> items, List<bool> checked) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit_square, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.disabled_by_default, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: index < checked.length ? checked[index] : false,
                      onChanged: (bool? value) {
                        setState(() {
                          checked[index] = value ?? false;
                        });
                      },
                      activeColor: Colors.grey,
                      checkColor: Colors.green,
                    ),
                    Expanded(
                      child: Text(items[index]),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHouseholdChoresChecklist(String title, List<String> items) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit_square, color: Colors.white),
                      onPressed: () {},
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Icon(Icons.disabled_by_default, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    items[index],
                    style: TextStyle(
                      decoration: index < 3 ? TextDecoration.lineThrough : null,
                      decorationColor: Colors.green,
                      decorationThickness: 2,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
