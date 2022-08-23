import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/pages/home/home_page.dart';
import 'package:pdp_bazar_home/pages/main/main_page.dart';

class WelcomePage extends StatefulWidget {
  static const id = "/welcome_page";
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
        initialPage: 0
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        onPageChanged: (int page) {
          setState(() {
            currentIndex = page;
          });
        },
        controller: _pageController,
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/collection.png")
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black26,
                        ]
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const Text("Welcome to 👋", style: TextStyle(
                      fontSize: 43,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const Text("Shoea", style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w900,
                        color: Colors.white
                    ),),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    margin: const EdgeInsets.only(left: 35, bottom: 50, right: 10),
                    child: const Text("The Best wefbwi fweifuwe bfieuf wfwiuef efwieufb efbiewbf kjfbweifb wkejfbweifb wefjwjfb fewfu wefewfb ", style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img_1.png"),
                    )
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(35),
                        child: const Text("We provide high quality products just for you", style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildIndicator(),
                      ),
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        color: Colors.black,
                        shape: const StadiumBorder(),
                        child: const Center(
                          child: Text("Next", style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img_3.png"),
                    )
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(35),
                        child: const Text("Your satisfaction is our number one priority", style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildIndicator(),
                      ),
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: MaterialButton(
                        onPressed: (){},
                        color: Colors.black,
                        shape: const StadiumBorder(),
                        child: const Center(
                          child: Text("Next", style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img.png"),
                    )
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(35),
                        child: const Text("Let's fulfill your fashion needs with SHoea right now!", style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildIndicator(),
                      ),
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, MainPage.id);
                        },
                        color: Colors.black,
                        shape: const StadiumBorder(),
                        child: const Center(
                          child: Text("Get Started", style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 1; i<=3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }

}
