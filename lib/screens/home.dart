import 'package:e_commercet/shared/colors.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/nat.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text(
                "Mohamed Ramadan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "khaledabozead575@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage("assets/free.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: abbBarGreen),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.apps, color: abbBarGreen),
              title: Text(
                "My Projects",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help_center_outlined, color: abbBarGreen),
              title: Text(
                "About Me",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: abbBarGreen),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            Spacer(),
            Center(
              child: Text(
                "Developed by m-ramadan © 2025",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        backgroundColor: abbBarGreen,
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: -3,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(211, 164, 255, 193),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "8",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "\$ 13",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (c) => ProductDetails()));
            },
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Color.fromARGB(66, 3, 40, 28),
                trailing: IconButton(
                  onPressed: () {},
                  color: Color.fromARGB(255, 255, 255, 255),
                  icon: Icon(Icons.add),
                ),
                leading: Text(
                  items[index].price,
                  style: TextStyle(color: Colors.white),
                ),
                title: Text(items[index].name),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          items[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
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
