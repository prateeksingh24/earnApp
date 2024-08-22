import 'package:earn_app/AppColor.dart';
import 'package:earn_app/view/Pages/MyReferrals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class ReferScreen extends StatefulWidget {
  const ReferScreen({super.key});

  @override
  State<ReferScreen> createState() => _ReferScreenState();
}

class _ReferScreenState extends State<ReferScreen> {
  final String referralCode = "C7FJKI67";
  bool iscopied = false;

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.kMain,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Refer and Earn',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/Lottie/refer.json',
                      width: 220,
                      height: 220,
                    ),
                    Text(
                      "Earn Upto 10% Commison",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColor.kMain,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 106, 32, 196))),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            // Copy the text to the clipboard
                            Clipboard.setData(
                              ClipboardData(text: referralCode),
                              // Show a snackbar or toast to inform the user
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(
                              //     content: Text('Text copied to clipboard'),
                              //     behavior: SnackBarBehavior
                              //         .floating, // Ensures the snackbar floats above other widgets
                              //     // margin: EdgeInsets.only(
                              //     //   bottom:
                              //     //       MediaQuery.of(context).viewInsets.bottom +
                              //     //           10, // Adjust margin to avoid overlap
                              //     // ),
                              //   ),
                            );
                            setState(() {
                              iscopied = !iscopied;
                            });
                          },
                          child: Text(
                            referralCode,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    iscopied ? const Text("Copied") : const Text("Tap to Copy"),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: _openWhatsApp,
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedWhatsapp,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Whatsapp",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            const url = "https://www.youtube.com";
                            await Share.share(
                                "Check out this amazing app I just found! Use Code = $referralCode \nDownload the app $url ",
                                subject: "Download");
                          },
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: AppColor.kMain,
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Share Others",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "How do you earn?",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.person,
                                color: AppColor.kMain,
                              ),
                              const SizedBox(
                                  width:
                                      8), // Adds spacing between the icon and text
                              const Expanded(
                                child: Text(
                                  "Your Friend installs Insta Rewards and signs up using your referral code",
                                  style: TextStyle(
                                      fontSize:
                                          13), // Adjust font size as needed
                                  softWrap: true, // Allows text to wrap
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                              height: 8), // Adds spacing between the rows
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.offline_bolt_outlined,
                                color: AppColor.kMain,
                              ),
                              const SizedBox(width: 8),
                              const Expanded(
                                child: Text(
                                  "Your Friend Completes any offers, you get up to 10% Commission. Tell Your Friend to complete higher amount offers to get more Commission",
                                  style: TextStyle(fontSize: 13),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyReferrals()));
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: AppColor.kMain,
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            "My Referrals",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
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
