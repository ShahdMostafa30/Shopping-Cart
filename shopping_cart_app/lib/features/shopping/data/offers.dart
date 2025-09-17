import 'package:shopping_cart_app/features/shopping/data/offer_model.dart';

class OffersData {
  static List<Offer> offers = [
    Offer(
      title: '50% Off Electronics',
      subtitle: 'Limited time offer on all tech gadgets',
      offer: '50% OFF',
    ),
    Offer(
      title: 'Free Shipping Weekend',
      subtitle: 'No delivery charges on orders above \$50',
      offer: 'FREE SHIP',
    ),
    Offer(
      title: 'Buy 2 Get 1 Free',
      subtitle: 'On selected accessories and peripherals',
      offer: 'B2G1',
    ),
    Offer(
      title: 'Student Discount',
      subtitle: 'Extra 20% off with valid student ID',
      offer: '20% OFF',
    ),
    Offer(
      title: 'Bundle Deals',
      subtitle: 'Save more when you buy complete setups',
      offer: 'BUNDLE',
    ),
  ];
}
