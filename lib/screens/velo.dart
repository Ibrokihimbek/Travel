import 'package:amaliyot/screens/bus.dart';
import 'package:amaliyot/screens/cycling.dart';
import 'package:amaliyot/screens/home.dart';
import 'package:amaliyot/screens/plane.dart';
import 'package:amaliyot/utils/images.dart';
import 'package:amaliyot/utils/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bicycle extends StatefulWidget {
  const Bicycle({super.key});

  @override
  State<Bicycle> createState() => _BicycleState();
}

class _BicycleState extends State<Bicycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      drawer: Drawer(
        child: DrawerHeader(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.yellow, Colors.orange],
                  ),
                ),
                height: 190,
                width: 400,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 12, top: 12),
                          child: Image.asset(Myimages.velo),
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const ListTile(
                      title: Text(
                        'Travelling',
                        style: TextStyle(fontSize: 24),
                      ),
                      subtitle: Text('www.najottalim.com'),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                leading: const Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CyclingPage(),
                    ),
                  );
                },
                leading: const Icon(Icons.pedal_bike_rounded),
                title: const Text(
                  'Cycling',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BusPage(),
                    ),
                  );
                },
                leading: const Icon(Icons.directions_bus_filled_rounded),
                title: const Text(
                  'Bus',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanePage(),
                    ),
                  );
                },
                leading: const Icon(Icons.airplanemode_active_outlined),
                title: const Text(
                  'Plane',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              const Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Profile',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.login_rounded),
                title: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              const Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Comunicate',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.share),
                title: const Text(
                  'Share',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.rate_review),
                title: const Text(
                  'Rate Us',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  child: const Text(
                    '''Traveling\n\nStart a new Journey''',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Container(
                  width: 130,
                  height: 130,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Myimages.velo),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 600,
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Travelmethod(TravelList.travel[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget Travelmethod(TravelList travel) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Center(child: travel.icon),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      width: 40,
      height: 120,
    );
  }
}
