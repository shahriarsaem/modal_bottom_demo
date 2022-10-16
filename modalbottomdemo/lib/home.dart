import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Future _showModal() async {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue[200],
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  trailing: Icon(Icons.edit),
                  title: Text('Shopping Cart'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart_checkout),
                  trailing: Icon(Icons.edit),
                  title: Text('Shopping Cart Checkout'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.edit),
                  title: Text('Profile'),
                ),
              ],
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Modal Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _showModal();
            },
            child: Icon(Icons.show_chart),
          ),
        ));
  }
}
