import 'package:commerce/widgets/forSaleCard.dart';
import 'package:commerce/widgets/newCard.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Scaffold(
        bottomNavigationBar: Stack(
          children: [
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: BottomNavigationBar(
                  
                  type: BottomNavigationBarType.fixed,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("assets/navigation0.png"),
                        ),
                        title: Text("Home")),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage("assets/navigation1.png"),
                        ),
                        title: Text(
                          "Shop",
                          style: TextStyle(color: Colors.grey),
                        )),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/navigation2.png"),
                      ),
                      title: Text("Bag", style: TextStyle(color: Colors.grey)),
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/navigation3.png"),
                      ),
                      title: Text("Favorites",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/navigation4.png"),
                      ),
                      title:
                          Text("Profile", style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Color.fromRGBO(219, 48, 34, 1),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/mainTop.png"))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Fashion\nsale",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 50),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 160,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(219, 48, 34, 1),
                          ),
                          child: Center(
                            child: Text(
                              "Check",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 30),
                        ),
                        Text(
                          "You've never seen it before!",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text("View all")
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      NewCard(
                        picture: "assets/forSale1.png",
                        currentPrice: "12",
                        lastPrice: "15",
                        name: "Dorothy Perkins",
                        type: "Evening Dress",
                        salePrice: "20",
                      ),
                      NewCard(
                        picture: "assets/forSale2.png",
                        currentPrice: "19",
                        lastPrice: "22",
                        name: "Stilly",
                        type: "SportDress",
                        salePrice: "15",
                      ),
                      NewCard(
                        picture: "assets/forSale2.png",
                        currentPrice: "19",
                        lastPrice: "19",
                        name: "Dorothy Perkins",
                        type: "Evening Dress",
                        salePrice: "22",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/mainMiddle.png"))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "Street Clothes",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 40),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sale",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 30),
                        ),
                        Text(
                          "Super summer sale",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text("View all")
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ForSaleCard(
                        picture: "assets/forSale3.png",
                        currentPrice: "12",
                        lastPrice: "15",
                        name: "Dorothy Perkins",
                        type: "Evening Dress",
                        salePrice: "20",
                      ),
                      ForSaleCard(
                        picture: "assets/forSale4.png",
                        currentPrice: "19",
                        lastPrice: "22",
                        name: "Stilly",
                        type: "SportDress",
                        salePrice: "15",
                      ),
                      ForSaleCard(
                        picture: "assets/forSale3.png",
                        currentPrice: "19",
                        lastPrice: "19",
                        name: "Dorothy Perkins",
                        type: "Evening Dress",
                        salePrice: "22",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/newCollection.png"))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                          ),
                          child: Text(
                            "New Collection",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 40),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 60),
                                child: Text(
                                  "Summer\nSale",
                                  style: TextStyle(
                                      color: Color.fromRGBO(219, 48, 34, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/black.png"))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 30, top: 60, left: 20),
                                        child: Text(
                                          "Black",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 40),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/man.png"))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      "Men's hoodies",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 40),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
