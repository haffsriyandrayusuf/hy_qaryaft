import 'dart:ui';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F5),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 75),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: AppBar(
            backgroundColor: const Color(0xffF4F4F5),
            scrolledUnderElevation: 0,
            leading: Container(
              height: 36,
              width: 36,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_outlined,
                size: 28,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 9),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monalisa Kanaeru',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '@chamberusoded',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6c6e82),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '+Follow',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff4568e8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                      color: Color(0xffF0F0F0),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xffE93C3C),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Stack(
                children: [
                  Container(
                    height: 360,
                    width: 327,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(24),
                      image: const DecorationImage(
                        image: AssetImage('images/item2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 31.5,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: Container(
                          height: 40,
                          width: 264,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.alarm, color: Colors.white),
                              SizedBox(width: 6),
                              Text(
                                '2 Days : 9 Hours : 22 Seconds ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Descriptions',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff333333),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'important figure in the history of the Haven Kingdom. The ancestor of the Ascent kings is said to have an aura of extraordinary beauty that causes bloodshed around him. The book of Pararaton Ken Dedes has a shining aurat, a sign of a nareswari woman who descends to bring down kings.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6C6E82),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Container(
        height: 140,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.11, -0.99),
            end: const Alignment(0.11, 0.49),
            colors: [
              Colors.white.withOpacity(0),
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 68,
            bottom: 24,
            left: 24,
            right: 24,
          ),
          child: Container(
            height: 48,
            decoration: BoxDecoration(
                color: const Color(0xff4568E8),
                borderRadius: BorderRadius.circular(16)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart_checkout_outlined,
                    color: Colors.white),
                SizedBox(width: 12),
                Text(
                  'Place a Bid',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
