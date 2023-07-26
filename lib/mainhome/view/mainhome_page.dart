import 'package:findmyroof1/apartment/view/apartment_page.dart';
import 'package:findmyroof1/favourites/view/favourites_page.dart';
import 'package:findmyroof1/flat/view/flat_page.dart';
import 'package:findmyroof1/house/view/house_page.dart';
import 'package:findmyroof1/mainhome/view/widgets/nearby_to_you.dart';
import 'package:findmyroof1/messages/view/messages_page.dart';
import 'package:findmyroof1/notification/view/notification_page.dart';
import 'package:findmyroof1/plot/view/plot_page.dart';
import 'package:findmyroof1/post_property/view/post_property_page.dart';
import 'package:findmyroof1/profile/view/profile_page.dart';
import 'package:findmyroof1/search/view/search_page.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ));
              },
              icon: Icon(Icons.notifications,color: Colors.black,)),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/findmyrooflogo.png',
          height: 70.0,
          width: 70.0,
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.home,
                                size: 37.5,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => House(),
                                    ));
                              },
                              color: Colors.blue[900],
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.apartment,
                                size: 37.5,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Apartment(),
                                    ));
                              },
                              color: Colors.blue[900],
                            ),
                            Text(
                              'Apartment',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.villa,
                                size: 37.5,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Flat(),
                                    ));
                              },
                              color: Colors.blue[900],
                            ),
                            Text(
                              'Flat',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.pin_drop,
                                size: 37.5,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Plot(),
                                    ));
                              },
                              color: Colors.blue[900],
                            ),
                            Text(
                              'Plot',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(' Nearby To You',style: TextStyle(fontWeight: FontWeight.w600),),
                  NearbyToYou()
                ],
              ),
            ],
          ),
              
        ),
        
        
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 25,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color.fromARGB(255, 0, 118, 206),
          selectedItemColor: Color.fromARGB(255, 0, 118, 206),
          items: [
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                  width: 35,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                  width: 35,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchPage(),
                            ));
                      },
                      icon: Icon(Icons.search)),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                  width: 35,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Favourites(),
                            ));
                      },
                      icon: Icon(Icons.favorite)),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                  width: 35,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Messages(),
                            ));
                      },
                      icon: Icon(Icons.message)),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                  width: 35,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ));
                      },
                      icon: Icon(Icons.person)),
                ),
                label: ''),
          ]),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostProperty(),
              ));
        },
        child: Icon(Icons.add_home_work),
        backgroundColor: Colors.orange[300],
      ),
    );
  }
}
