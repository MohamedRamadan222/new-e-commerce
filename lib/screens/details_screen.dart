import 'package:flutter/material.dart';

import '../models/item.dart';
import '../shared/colors.dart';
import '../shared/custom_row_appbar.dart';

class DetailsScreen extends StatefulWidget {
  final Item product;

  const DetailsScreen({super.key, required this.product});

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
        actions: [CustomRowAppbar()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Image.asset(widget.product.imageUrl),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "${widget.product.price}",
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
                    "Details :   ${widget.product.name}",
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
