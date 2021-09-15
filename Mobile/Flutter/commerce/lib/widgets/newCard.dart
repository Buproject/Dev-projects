import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  final String picture, salePrice, type, name, lastPrice, currentPrice;
  const NewCard({
    Key? key,
    required this.salePrice,
    required this.type,
    required this.name,
    required this.lastPrice,
    required this.currentPrice,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(picture)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "NEW",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 150,
                  left: 108,
                  child: Image.asset("assets/addFavorite.png")),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.star_rounded,
                color: Color.fromRGBO(255, 186, 73, 1),
                size: 15,
              ),
              Icon(
                Icons.star_rounded,
                color: Color.fromRGBO(255, 186, 73, 1),
                size: 15,
              ),
              Icon(
                Icons.star_rounded,
                color: Color.fromRGBO(255, 186, 73, 1),
                size: 15,
              ),
              Icon(
                Icons.star_rounded,
                color: Color.fromRGBO(255, 186, 73, 1),
                size: 15,
              ),
              Icon(
                Icons.star_rounded,
                color: Color.fromRGBO(255, 186, 73, 1),
                size: 15,
              ),
              Text(
                "(10)",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
                type,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
          Row(
            children: [
              Text(
                lastPrice + "\$",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                currentPrice + "\$",
                style: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(219, 48, 34, 1)),
              )
            ],
          )
        ],
      ),
    );
  }
}
