import 'package:flutter/material.dart';

void main() {
  runApp(ProductScreen());
}

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ürün Listesi',
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ürün Listesi'),
      ),
      body: ListView(
        children: [
          ProductCard(
            image: 'assets/image/Pantol.jpeg', 
            productName: 'Pantolon',
            price: '399,99 TL',
          ),
          ProductCard(
            image: 'assets/image/gömlek.jpeg', 
            productName: 'Gömlek',
            price: '299,99 TL',
          ), 
       ProductCard(
            image: 'assets/image/sapka.jpeg', 
            productName: 'Şapka',
            price: '149,99 TL',
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String productName;
  final String price;

  ProductCard({
    required this.image,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 150, // Resim yüksekliği
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    productName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
              },
              child: Text('Satın Al'),
            ),
          ),
        ],
      ),
    );
  }
}


/*List<Product> products = [
  Product(name: 'Pantolon', price: 399.99 ,imagePath: 'assets/image/Pantol.jpeg'),
  Product(name: 'Gömlek', price: 299.99, imagePath: 'assets/image/gömlek.jpeg'),
  Product(name: 'Tişört', price: 199.99, imagePath: 'assets/image/tshirt.jpeg'),
  // Diğer ürünleri buraya ekleyin
];*/