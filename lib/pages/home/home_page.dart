import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/models/product_model.dart';
import 'package:pdp_bazar_home/services/mock_data.dart';
import 'package:pdp_bazar_home/views/product_view.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 13, top: 5),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/img_12.png")),
            shape: BoxShape.circle,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning 👋",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
            ),
            const Text(
              "Andrew Ainsley",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              splashRadius: 24,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bell,
                color: Colors.black,
                size: 28,
              )),
          IconButton(
              splashRadius: 24,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart,
                color: Colors.black,
                size: 28,
              )),
          const SizedBox(
            width: 10,
          ),
        ],
        centerTitle: false,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 55,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade300,
            ),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Search',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    CupertinoIcons.settings_solid,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Special Offers",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                itemOfSpecialOffers(),
                itemOfSpecialOffers(),
                itemOfSpecialOffers(),
              ],
            ),
          ),
          SizedBox(
            height: 260,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    firms("assets/images/log8.jpg", "Nike"),
                    firms("assets/images/log7.jpg", "Adidas"),
                    firms("assets/images/log6.jpg", "Puma"),
                    firms("assets/images/log5.jpg", "Asics"),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    firms("assets/images/log4.jpg", "Reebok"),
                    firms("assets/images/log3.jpg", "New Ba.."),
                    firms("assets/images/log2.jpg", "Converse"),
                    firms("assets/images/log1.jpg", "More"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                namesOfFirms("All"),
                namesOfFirms("Nike"),
                namesOfFirms("Adidas"),
                namesOfFirms("Puma"),
                namesOfFirms("Asics"),
                namesOfFirms("Reebok"),
                namesOfFirms("New Ba.."),
                namesOfFirms("Converse"),
              ],
            ),
          ),
          Column(
            children: [
              ProductView(product: Product.fromJson(productsMock[0])),
              ProductView(product: Product.fromJson(productsMock[0])),
              ProductView(product: Product.fromJson(productsMock[0])),
              ProductView(product: Product.fromJson(productsMock[0])),
              ProductView(product: Product.fromJson(productsMock[0])),
              ProductView(product: Product.fromJson(productsMock[0])),
            ],
          )
        ],
      ),
    );
  }

  Widget itemOfSpecialOffers() {
    return Container(
      height: 160,
      width: 380,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.red.shade700),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "25%",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "Today's special!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "Get discount for every order. only valid for today",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 150,
              width: 150,
              child: const Image(
                image: AssetImage("assets/images/img_8.png"),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget firms(String imagePath, String name) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
            image: DecorationImage(
              // fit: BoxFit.contain,
              image: AssetImage(imagePath),
            ),
          ),
        ),
        const SizedBox(height: 13),
        Text(name, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        )
      ],
    );
  }

  Widget namesOfFirms(String name) {
    return GestureDetector(
      onTap: (){
        debugPrint("object");
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            border: Border.all(
              color: Colors.black,
              width: 2,
            )),
        child: Center(
          child: Text(name, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
