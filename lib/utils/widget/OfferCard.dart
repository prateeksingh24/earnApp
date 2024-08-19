import 'package:earn_app/AppColor.dart';
import 'package:earn_app/Model/OfferModel.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final OfferModel offer;
  const OfferCard({
    super.key,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              offer.imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7),
            child: Center(
              child: Text(
                offer.appName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "\$${offer.price}",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: AppColor.kMain,
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  "View Offer",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
