class Clothing {
  int id;
  String name;
  String description;
  String image;
  double price;
  String brand;

  Clothing({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.brand,
  });

  Clothing.fromJson(Map<String, dynamic> data):
        id = data['id'],
        name = data['name'],
        description = data['description'],
        image = data['image'],
        price = data['price'],
        brand = data['brand'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image': image,
    'price': price,
    'brand': brand,
  };
}