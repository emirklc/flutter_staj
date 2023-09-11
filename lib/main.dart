import 'package:flutter/material.dart';
import 'package:lcw_ilk/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Textile E-Ticaret',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('LC WAİKİKİ'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hoş Geldiniz!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
             
              
              SizedBox(height: 16),
              MaterialButton(
                color: Color.lerp(Colors.blue,Colors.black,BorderSide.strokeAlignCenter),
                onPressed: () {
                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>ProductScreen()),);
                },
                child: Text('Ürünleri Görüntüle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
