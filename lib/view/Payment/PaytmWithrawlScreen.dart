import 'package:earn_app/AppColor.dart';
import 'package:flutter/material.dart';

class PaytmWithdrawlScreen extends StatefulWidget {
  const PaytmWithdrawlScreen({super.key});

  @override
  State<PaytmWithdrawlScreen> createState() => _PaytmWithdrawlScreenState();
}

class _PaytmWithdrawlScreenState extends State<PaytmWithdrawlScreen> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  bool _isLoading = false;

  void _handleLogin() async {
    setState(() {
      _isLoading = true;
    });

    // Simulating a login process (replace with your actual login logic)
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      _isLoading = false;
    });

  

    // Add your post-login logic here (e.g., navigate to another screen)
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppColor.kMain,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
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
                    const SizedBox(width: 20),
                    const Text(
                      "Paytm Redeem",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColor.kMain,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                "Your Balance: ₹0.00",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Enter Paytm Number",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            cursorColor: Colors.black,
                            controller: _numberController,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 2)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.4),
                                        width: 2)),
                                hintText: "Enter Paytm Number",
                                hintStyle: const TextStyle(color: Colors.grey)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Enter Amount to Redeem",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            cursorColor: Colors.black,
                            controller: _amountController,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 2)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.4),
                                        width: 2)),
                                hintText: "Enter Amount",
                                hintStyle: const TextStyle(color: Colors.grey)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Minimum Withdrawl: ₹10.00",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Maximum Withdrawl: ₹100.00",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: InkWell(
                          onTap: _isLoading ? null : _handleLogin,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: _isLoading ? Colors.grey : AppColor.kMain,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: _isLoading
                                  ? const CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    )
                                  : const Text(
                                      "Transfer to Paytm Wallet",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
