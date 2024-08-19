import 'package:earn_app/AppColor.dart';
import 'package:earn_app/Data/bankingData.dart';
import 'package:earn_app/Data/dematOffer.dart';
import 'package:earn_app/Data/registerOfferData.dart';
import 'package:earn_app/utils/widget/OfferCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // State variable to track the selected index
  int _selectedIndex = 0; // No selection by default

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
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 15, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/512/2059/2059570.png"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, Prateek",
                                    style: TextStyle(
                                        fontSize: 18, color: AppColor.kAccent),
                                  ),
                                  Text(
                                    "Welcome",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.kAccent,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications_active,
                                  color: AppColor.kAccent,
                                  size: 35,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppColor.kAccent),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        color: AppColor.kMain,
                                        size: 35,
                                      ),
                                      Text(
                                        "30",
                                        style: TextStyle(
                                            color: AppColor.kMain,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: width,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/onboard/banner1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: width,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildClickableContainer("Register/Install", 0),
                      _buildClickableContainer("Banking Offers", 1),
                      _buildClickableContainer("Demat Offers", 2),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 20),
              // Display demo content based on the selected index
              if (_selectedIndex == 0) _RegisterInstall("Register/Install"),
              if (_selectedIndex == 1) _BankingOffer("Banking Offers"),
              if (_selectedIndex == 2) _DematOffer("Demat Offers"),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build a clickable container
  Widget _buildClickableContainer(String text, int index) {
    final isSelected = _selectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: 10), // Adjust padding for vertical spacing
          decoration: BoxDecoration(
            color: isSelected ? AppColor.kMain : Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13, // Adjust font size if needed
              ),
              overflow: TextOverflow.ellipsis, // Handle text overflow
            ),
          ),
        ),
      ),
    );
  }

  // Method to build demo content based on the selected index
  Widget _RegisterInstall(String title) {
    return SizedBox(
      // padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75, // Adjust to your preference
        ),
        itemCount: registerOfferData.length,
        itemBuilder: (context, index) {
          final offer = registerOfferData[index];
          return OfferCard(
            offer: offer,
          );
        },
      ),
    );
  }

  Widget _BankingOffer(String title) {
    return SizedBox(
      // padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.73, // Adjust to your preference
        ),
        itemCount: bankingData.length,
        itemBuilder: (context, index) {
          final offer = bankingData[index];
          return OfferCard(
            offer: offer,
          );
        },
      ),
    );
  }

  Widget _DematOffer(String title) {
    return SizedBox(
      // padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.73, // Adjust to your preference
        ),
        itemCount: dematOfferData.length,
        itemBuilder: (context, index) {
          final offer = dematOfferData[index];
          return OfferCard(
            offer: offer,
          );
        },
      ),
    );
  }
}
