import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:legends_toolkit/compunemts/HomeIcons.dart';
import 'package:legends_toolkit/compunemts/sliderimageconpoment.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> sliderImages = [
    const SliderImageCompunent(
      imagepath: 'assets/images/slide1.jpg',
    ),
    const SliderImageCompunent(
      imagepath: 'assets/images/slide2.jpg',
    ),
    const SliderImageCompunent(
      imagepath: 'assets/images/slide3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue.shade100),
              child: const Text("Header"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.home),
              ),
              title: const Text("Home"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.search),
              ),
              title: const Text("Search"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.share_outlined),
              ),
              title: const Text("Share"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.sticky_note_2),
              ),
              title: const Text("Disclaimer"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: const Icon(Icons.privacy_tip),
              ),
              title: const Text("Privacy Policy"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: const Icon(Icons.star_half),
              ),
              title: const Text("Rate Us"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: const Icon(Icons.info),
              ),
              title: const Text("About"),
            ),
            Expanded(
                child: SizedBox(
              height: 20.h,
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                    textAlign: TextAlign.center,
                    "we do not claim rights on any information provided in the application",
                    style: TextStyle(color: Colors.grey.shade400)),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
              items: sliderImages,
              options: CarouselOptions(
                height: 25.h,
                autoPlay: true,
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: InkWell(
              onTap: () {},
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                    hintText: 'Search Tools ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: GridView.count(
                childAspectRatio: 1,
                padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                crossAxisSpacing: 2,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                children: <Widget>[
                  DashboardIcons(
                    imageUrl: 'assets/images/sim.png',
                    iconName: 'SIM DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/id-card.png',
                    iconName: 'CNIC DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/gmail.png',
                    iconName: 'GMAIL\nGENERATOR',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/sim.png',
                    iconName: 'SIM DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/id-card.png',
                    iconName: 'CNIC DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/gmail.png',
                    iconName: 'GMAIL\nGENERATOR',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/sim.png',
                    iconName: 'SIM DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/id-card.png',
                    iconName: 'CNIC DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/gmail.png',
                    iconName: 'GMAIL\nGENERATOR',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/sim.png',
                    iconName: 'SIM DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/id-card.png',
                    iconName: 'CNIC DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/gmail.png',
                    iconName: 'GMAIL\nGENERATOR',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/sim.png',
                    iconName: 'SIM DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/id-card.png',
                    iconName: 'CNIC DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/gmail.png',
                    iconName: 'GMAIL\nGENERATOR',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/sim.png',
                    iconName: 'SIM DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/id-card.png',
                    iconName: 'CNIC DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/gmail.png',
                    iconName: 'GMAIL\nGENERATOR',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/sim.png',
                    iconName: 'SIM DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/id-card.png',
                    iconName: 'CNIC DATA',
                  ),
                  DashboardIcons(
                    imageUrl: 'assets/images/gmail.png',
                    iconName: 'GMAIL\nGENERATOR',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
