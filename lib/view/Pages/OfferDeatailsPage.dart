// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:earn_app/AppColor.dart';
import 'package:earn_app/Model/OfferModel.dart';

class OfferDetailsPage extends StatefulWidget {
  final OfferModel offer;
  const OfferDetailsPage({
    Key? key,
    required this.offer,
  }) : super(key: key);

  @override
  State<OfferDetailsPage> createState() => _OfferDetailsPageState();
}

class _OfferDetailsPageState extends State<OfferDetailsPage> {
  final String referralCode = "C7FJKI67";

  Future<void> _openWhatsApp() async {
    final String message =
        "Check out this amazing app I just found! Use Code = $referralCode";
    final String url = "https://wa.me/?text=${Uri.encodeComponent(message)}";
    final Uri _url = Uri.parse(url);

    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  // Function to open Share dialog
  Future<void> _shareContent() async {
    final Uri _url =
        Uri.parse('https://www.pub.dev'); // Example URL or content to share
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.kMain,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_circle_left_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    widget.offer.appName,
                    style: const TextStyle(fontSize: 26, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 120,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Image.network(
                      widget.offer.imageUrl,
                      width: 200,
                      height: 200,
                    ),
                    Text(
                      "Offers Details",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColor.kMain,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Card(
                        elevation: 4,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 0.2,
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Complete Offer and Get Free Money",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "₹${widget.offer.price}",
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 54, 217, 59),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Card(
                        elevation: 4,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          width: MediaQuery.of(context).size.width,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 0.2,
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.task),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Task Details",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "1. Dowmload App\n2. Open App and Register\n3. Done You Get Your Task Money",
                                style: TextStyle(
                                  color: AppColor.kMain,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColor.kMain,
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              "Share To Get Extra",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColor.kMain,
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              "Install Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
