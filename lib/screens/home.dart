import 'package:flutter/material.dart';
import '../models/clothing_model.dart';
import 'details.dart';

class HomeScreen extends StatelessWidget {
  final List<Clothing> clothingItems = [
    Clothing(
      id: 1,
        name: 'Dress',
        description: 'Elegant and versatile, this Mango dress is designed for every occasion, offering timeless style with a comfortable fit.',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8R7XnPNUBHNKwnVB6rwXvfGHQWCk2ne7l6Q&s',
        price: 40,
        brand: 'Mango'
    ),
    Clothing(
      id: 2,
        name: 'Jeans',
        description: 'Classic Stradivarius jeans with a modern fit, perfect for effortless, everyday style.',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaHNQtZnIY1a3SVdKnjSM0bKEYKG6dYXl5kg&s',
        price: 35,
        brand: 'Stradivarius'

    ),
    Clothing(
        id: 3,
        name: 'Heels',
        description: 'Elegant Zara shoes, designed for timeless style and all-day comfort.',
        image: 'https://static.zara.net/assets/public/5b55/f177/0f1b499e8e4b/670fd895f32c/12231310098-e5/12231310098-e5.jpg?ts=1721129120682',
        price: 50,
        brand: 'Zara'
    ),
    Clothing(
        id: 4,
        name: 'Jacket',
        description: 'Trendy Pull & Bear jacket, perfect for layering in chilly weather.',
        image: 'https://static.zara.net/assets/public/5e2d/854c/693e47b495e0/75c0b4322337/08372244700-p/08372244700-p.jpg?ts=1728034480051&w=412',
        price: 60,
        brand: 'Pull & Bear'
    ),
    Clothing(
        id: 5,
        name: 'Top',
        description: 'Stylish New Yorker top, versatile for casual and chic looks.',
        image: 'https://di2ponv0v5otw.cloudfront.net/posts/2022/11/08/636ac03652eee122cc08058e/m_wp_636ac0822fbf1a890e919877.webp',
        price: 30,
        brand: 'New Yorker'
    ),
    Clothing(
        id: 6,
        name: 'Scarf',
        description: 'Cozy Bershka scarf, perfect for adding warmth and style.',
        image: 'https://static.zara.net/assets/public/4f15/f9b0/f177402d93ea/ebf61a85633c/03920470051-p/03920470051-p.jpg?ts=1730306708730&w=824',
        price: 20,
        brand: 'Bershka'
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index Number: 211162'),
        backgroundColor: Colors.brown[300],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: clothingItems.length,
        itemBuilder: (context, index) {
          final item = clothingItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(),
                  settings: RouteSettings(arguments: item),
                ),
              );
            },
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      item.image,
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
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
                      '${item.brand} - \$${item.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}