import 'package:earn_app/AppColor.dart';
import 'package:earn_app/utils/widget/transactionsCard.dart';

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: 250,
                decoration: BoxDecoration(
                    color: AppColor.kMain,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_circle_left_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: const Text(
                              "Wallet",
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        elevation: 5,
                        shadowColor: Colors.grey[500],
                        child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 20),
                            width: width,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Available Balance",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "₹0.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 35,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: AppColor.kMain,
                                              border: Border.all(width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: const Center(
                                            child: Text(
                                              "Withdraw Money",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Lottie.asset("assets/Lottie/wallet.json",
                                    width: 150, height: 100)
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Text(
                "Recent Transactions",
                style: TextStyle(
                    color: AppColor.kMain,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: width,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    TransactionCard(),
                    TransactionCard(),
                    TransactionCard(),
                    TransactionCard(),
                  ],
                ),
              )

              // const SizedBox(height: 20),
              // Display demo content based on the selected index
            ],
          ),
        ),
      ),
    );
  }
}
