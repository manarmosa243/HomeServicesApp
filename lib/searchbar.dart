import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 480, // Set the maximum width
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              // controller: controller,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.indigo,
            ),
            onPressed: () {
              // Perform search
            },
          ),
        ],
      ),
    );
  }
}
