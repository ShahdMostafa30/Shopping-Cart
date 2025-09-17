import 'package:flutter/material.dart';
import 'package:shopping_cart_app/features/shopping/data/offers.dart';
import 'package:shopping_cart_app/features/shopping/widgets/offer_card.dart';

class HotOffers extends StatelessWidget {
  const HotOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Text(
          'Hot Offers 🔥',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return OfferCard(
              title: OffersData.offers[index].title,
              subtitle: OffersData.offers[index].subtitle ,
              offer: OffersData.offers[index].offer,
            );
          },
        ),
      ],
    );
  }
}
