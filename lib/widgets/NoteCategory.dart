import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteCategory extends StatelessWidget {
  final String title;
  final bool showClear;

  const NoteCategory({Key? key, required this.title, this.showClear = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          if (showClear)
            Positioned(
              right: 0,
              child: Container(
                width: 100,
                height: 53,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Clear',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}