import 'package:flutter/material.dart';

import '../shared/colors.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details', style: TextStyle(color: Colors.white)),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Image.asset("assets/products/seven.jpg"),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "\$13",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "New",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Spacer(),
                      Icon(Icons.place, color: Colors.green, size: 30),
                      SizedBox(width: 4),
                      Text("Flower shop", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Details :",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "This is a detailed description of the product. It provides information about the features, benefits, and other relevant details that help the customer make an informed decision about the purchase"
                    "This is a detailed description of the product. It provides information about the features, benefits, and other relevant details that help the customer make an informed decision about the purchase"
                    "This is a detailed description of the product. It provides information about the features, benefits, and other relevant details that help the customer make an informed decision about the purchase",
                    style: TextStyle(fontSize: 18),
                    maxLines: isShowMore ? 3 : null,
                    overflow: TextOverflow.fade,
                  ),
                  Text(
                    "This is a detailed description of the product. It provides information about the features, benefits, and other relevant details that help the customer make an informed decision about the purchase"
                    "This is a detailed description of the product. It provides information about the features, benefits, and other relevant details that help the customer make an informed decision about the purchase"
                    "This is a detailed description of the product. It provides information about the features, benefits, and other relevant details that help the customer make an informed decision about the purchase",
                    style: TextStyle(fontSize: 18),
                    maxLines: isShowMore ? 3 : null,
                    overflow: TextOverflow.fade,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Implement show more functionality
                        setState(() {
                          isShowMore = !isShowMore;
                        });
                      },
                      child: Text(
                        isShowMore ? "Show More" : "Show Less",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
