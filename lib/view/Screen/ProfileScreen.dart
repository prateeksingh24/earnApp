import 'package:earn_app/AppColor.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.kMain,
                fontSize: 28),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                radius: 60,
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2059/2059570.png",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Prateek Singh",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "prateeksingh@gmail.com",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  children: [
                    Card(
                      elevation: 3,
                      shadowColor: AppColor.kMain,
                      child: ListTile(
                          title: Text(
                            "Rate Us",
                            style: TextStyle(
                                color: AppColor.kMain,
                                fontWeight: FontWeight.w500),
                          ),
                          leading: Icon(
                            Icons.star_border,
                            color: AppColor.kMain,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.kMain,
                            ),
                          )),
                    ),
                    Card(
                      elevation: 3,
                      shadowColor: AppColor.kMain,
                      child: ListTile(
                        title: Text(
                          "Join Our Telegram Group",
                          style: TextStyle(
                              color: AppColor.kMain,
                              fontWeight: FontWeight.w500),
                        ),
                        leading: Icon(
                          Icons.telegram,
                          color: AppColor.kMain,
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.open_in_new,
                            color: AppColor.kMain,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 3,
                      shadowColor: AppColor.kMain,
                      child: ListTile(
                        title: Text(
                          "Support & Faq",
                          style: TextStyle(
                              color: AppColor.kMain,
                              fontWeight: FontWeight.w500),
                        ),
                        leading: Icon(
                          Icons.help,
                          color: AppColor.kMain,
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColor.kMain,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 3,
                      shadowColor: AppColor.kMain,
                      child: ListTile(
                        title: Text(
                          "Privacy Policy",
                          style: TextStyle(
                              color: AppColor.kMain,
                              fontWeight: FontWeight.w500),
                        ),
                        leading: Icon(
                          Icons.lock,
                          color: AppColor.kMain,
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.open_in_new,
                            color: AppColor.kMain,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 3,
                      shadowColor: AppColor.kMain,
                      child: ListTile(
                        title: Text(
                          "terms & Conditions",
                          style: TextStyle(
                              color: AppColor.kMain,
                              fontWeight: FontWeight.w500),
                        ),
                        leading: Icon(
                          Icons.edit_document,
                          color: AppColor.kMain,
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.open_in_new,
                            color: AppColor.kMain,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 3,
                      shadowColor: AppColor.kMain,
                      child: ListTile(
                        title: Text(
                          "Logout",
                          style: TextStyle(
                              color: AppColor.kMain,
                              fontWeight: FontWeight.w500),
                        ),
                        leading: Icon(
                          Icons.logout_sharp,
                          color: AppColor.kMain,
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColor.kMain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
