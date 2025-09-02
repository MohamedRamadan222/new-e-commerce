import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/cart.dart';
import '../shared/colors.dart';
import '../shared/custom_row_appbar.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckOut', style: TextStyle(color: Colors.white)),
        backgroundColor: abbBarGreen,
        actions: [CustomRowAppbar()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: cart.selectedItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      subtitle: Text(
                        " Price ${cart.selectedItems[index].price}",
                        style: TextStyle(fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          cart.selectedItems[index].imageUrl,
                        ),
                      ),
                      title: Text(
                        "product ${cart.selectedItems[index].name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          cart.removeItem(cart.selectedItems[index]);
                        },
                        icon: Icon(Icons.remove_outlined),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(abbBarGreen),
              padding: WidgetStateProperty.all(EdgeInsets.all(18)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            child: Text(
              "pay \$ ${cart.price}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
