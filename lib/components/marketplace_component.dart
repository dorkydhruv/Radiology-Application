import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:radiology_app/constants.dart';

class MarketplaceComponent extends StatelessWidget {
  const MarketplaceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final [width, height] = getDimensions(context);
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              SizedBox(
                height: height,
                width: width * 0.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/img/marketplace.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0.1),
                            Colors.black.withOpacity(0.05),
                            Colors.black.withOpacity(0.01)
                          ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 113, 206),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Verified",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w800),
                        ),
                        Image.asset(
                          "assets/img/tick.png",
                          scale: 5,
                        )
                      ],
                    )),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "50% OFF\n",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.w900),
                      children: [
                        TextSpan(
                          text: "UPTO ₹1000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w600),
                        ),
                      ]),
                ),
              ),
              const Positioned(
                  bottom: 15,
                  right: 10,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                    color: Colors.white,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Shiska Coaching Center",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w800),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      "assets/img/badge.png",
                      scale: 0.8,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "4.5\t(100+ Ratings)",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 12,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "All Subjects . Com . Sci",
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 13,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Kalkaji ",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 13,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.fiber_manual_record,
                      color: secondaryColor,
                      size: 5,
                    ),
                    Text(
                      " 1.5 km",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 13,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "View Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 12,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// Positioned(
//                         child: Text(
//                       " 50% OFF",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontFamily: "Avenir",
//                           fontWeight: FontWeight.w900),
//                     )),
//                     Positioned(
//                         child: Text(
//                       "  UPTO ₹1000",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontFamily: "Avenir",
//                           fontWeight: FontWeight.w600),
//                     ))