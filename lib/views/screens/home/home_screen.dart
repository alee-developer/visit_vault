import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<GridItem> items = [
    GridItem(
      imageUrl: 'https://via.placeholder.com/150',
      name: 'John Doe',
      datetime: DateTime.now(),
    ),
    GridItem(
      imageUrl: 'https://via.placeholder.com/150',
      name: 'Jane Smith',
      datetime: DateTime.now().subtract(Duration(days: 1)),
    ),

    GridItem(
      imageUrl: 'https://via.placeholder.com/150',
      name: 'John Doe',
      datetime: DateTime.now(),
    ),
    GridItem(
      imageUrl: 'https://via.placeholder.com/150',
      name: 'Jane Smith',
      datetime: DateTime.now().subtract(Duration(days: 1)),
    ),
    GridItem(
      imageUrl: 'https://via.placeholder.com/150',
      name: 'John Doe',
      datetime: DateTime.now(),
    ),
    GridItem(
      imageUrl: 'https://via.placeholder.com/150',
      name: 'Jane Smith',
      datetime: DateTime.now().subtract(Duration(days: 1)),
    ),
    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beautiful Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75, // Aspect ratio of each card
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GridItemCard(item: items[index]);
          },
        ),
      ),
    );
  }
}

class GridItem {
  final String imageUrl;
  final String name;
  final DateTime datetime;

  GridItem({required this.imageUrl, required this.name, required this.datetime});
}

class GridItemCard extends StatelessWidget {
  final GridItem item;

  GridItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '${item.datetime.day}/${item.datetime.month}/${item.datetime.year}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
