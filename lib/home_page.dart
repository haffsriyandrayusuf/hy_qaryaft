import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Map<String, dynamic>> popularItem = [
    {
      "itemPic": "images/item1.png",
      "itemTitle": "Blinded Bird",
      "userPic": "images/pic1.png",
      "username": "witteackerman",
      "countdown": "2d:9h:22s"
    },
    {
      "itemPic": "images/item2.png",
      "itemTitle": "Mighty Gaming",
      "userPic": "images/pic2.png",
      "username": "papoybanana",
      "countdown": "1d:9h:22s"
    },
    {
      "itemPic": "images/item1.png",
      "itemTitle": "Blinded Bird",
      "userPic": "images/pic1.png",
      "username": "witteackerman",
      "countdown": "2d:9h:22s"
    },
    {
      "itemPic": "images/item2.png",
      "itemTitle": "Mighty Gaming",
      "userPic": "images/pic2.png",
      "username": "papoybanana",
      "countdown": "1d:9h:22s"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F5),
      // appBar: PreferredSize(
      //   preferredSize: const Size(double.infinity, 180),
      //   child: Container(
      //     color: const Color(0xff232743),
      //     child: SafeArea(
      //         child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 24),
      //       child: Row(
      //         // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Container(
      //             height: 48,
      //             width: 48,
      //             color: Colors.white,
      //           ),
      //           const SizedBox(width: 12),
      //           const Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Welcome',
      //                 style: TextStyle(
      //                   color: Color(0xff9398BB),
      //                 ),
      //               ),
      //               Text(
      //                 'Reyna Botfrag',
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const Spacer(),
      //           Container(
      //             height: 48,
      //             width: 48,
      //             color: Colors.grey,
      //           ),
      //         ],
      //       ),
      //     )),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    color: const Color(0xff232743),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('images/user.png'),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff9398BB),
                                    ),
                                  ),
                                  Text(
                                    'Reyna Botfrag',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 48,
                            width: 48,
                            // color: Colors.grey,
                            child: Stack(
                              children: [
                                const Center(
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    size: 28,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  left: 25,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xfffb4e4e),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 24,
                    right: 24,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xffffffff),
                          hoverColor: const Color(0xffffffff),
                          hintText: 'Search product...',
                          hintStyle: const TextStyle(
                            color: Color(0xffB9B9B9),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: const Icon(
                            Icons.search_outlined,
                            size: 30,
                          ),
                          suffixIconColor: const Color(0xffB9B9B9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Popular NFT',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4568E8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 276,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: popularItem.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 276,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 183,
                                width: 268,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(24),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      popularItem[index]["itemPic"],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 16,
                                left: 183 / 2,
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 3.0, sigmaY: 3.0),
                                    child: Container(
                                      height: 33,
                                      width: 99,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.3),
                                        borderRadius:
                                            BorderRadius.circular(33 / 2),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          popularItem[index]['countdown'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Container(
                          //   height: 183,
                          //   width: 268,
                          //   decoration: BoxDecoration(
                          //     color: Colors.grey,
                          //     borderRadius: BorderRadius.circular(24),
                          //     image: DecorationImage(
                          //       image: AssetImage(
                          //         popularItem[index]["itemPic"],
                          //       ),
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          //   alignment: Alignment.bottomCenter,
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(16),
                          //     child: Container(
                          //       height: 33,
                          //       width: 99,
                          //       decoration: BoxDecoration(
                          //         // color: Colors.white,
                          //         borderRadius: BorderRadius.circular(33 / 2),
                          //         border: Border.all(
                          //           color: Colors.white,
                          //           width: 1,
                          //         ),
                          //       ),
                          //       child: Center(
                          //         child: Text(
                          //           popularItem[index]['countdown'],
                          //           style: const TextStyle(
                          //             color: Colors.white,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(45 / 2),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      popularItem[index]["userPic"],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    popularItem[index]["itemTitle"],
                                    // 'Blinded Bird',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                  Text(
                                    '@${popularItem[index]["username"]}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff9796A1),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                height: 29,
                                width: 66,
                                decoration: BoxDecoration(
                                  color: const Color(0xff4568E8),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Bid',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Best Seller',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4568E8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 280,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    // width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                  popularItem[index]['itemPic'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                popularItem[index]['itemTitle'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff333333),
                                ),
                              ),
                              Text(
                                '@${popularItem[index]['username']}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff9796A1),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Color(0xff9796A1),
                          ),
                          // ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemCount: 3,
              ),
            ),
            const SizedBox(height: 16),
            // ...List.generate(
            //   5,
            //   (index) => Text(
            //     'data ${index + 1}',
            //     style: const TextStyle(
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        // height: 80,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 0,
          selectedItemColor: const Color(0xff4568E8),
          unselectedItemColor: const Color(0xff9796A1),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_filled),
              activeIcon: Column(
                children: [
                  const Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4568E8)),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xff4568E8),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.explore_outlined),
              activeIcon: Column(
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4568E8)),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xff4568E8),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.wallet_outlined),
              activeIcon: Column(
                children: [
                  const Text(
                    'Wallet',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4568E8)),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xff4568E8),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart_outlined),
              activeIcon: Column(
                children: [
                  const Text(
                    'Cart',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4568E8)),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xff4568E8),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              activeIcon: Column(
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4568E8)),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xff4568E8),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class PopularWidget extends StatelessWidget {
  const PopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 276,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 183,
              width: 268,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(24),
              ),
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 33,
                  width: 99,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(33 / 2),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 8,
                        blurStyle: BlurStyle.inner,
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      '2d:9h:22s',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(45 / 2),
                  ),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blinded Bird',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                    Text(
                      '@witteackerman',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9796A1),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 29,
                  width: 66,
                  decoration: BoxDecoration(
                    color: const Color(0xff4568E8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'Bid',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
