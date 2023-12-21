import 'package:coo_sport/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ItemTracking extends StatefulWidget {
  const ItemTracking({Key? key}) : super(key: key);

  @override
  State<ItemTracking> createState() => _ItemTrackingState();
}

class _ItemTrackingState extends State<ItemTracking> {
  // Sample delivery history data
  final List<DeliveryEvent> deliveryHistory = [
    DeliveryEvent('Package accepted', '24 August 2024 09:00 AM'),
    DeliveryEvent('Out for delivery', '25 August 2024 02:30 PM'),
    DeliveryEvent('Delivered', '26 August 2024 11:45 AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF019B83)),
        title: const Padding(
          padding: EdgeInsets.only(left: 60, top: 0, right: 7),
          child: Text(
            'Item Tracking',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ESTIMATION : ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "23 AUGUST 2024",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(height: 1),
            ),
            Container(
              height: 280, // Adjust the height as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/gmaps.png',
                  fit: BoxFit.cover, // Adjust the fit property as needed
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                // Removed BoxShadow
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Item Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildDetailRow('Item Name', 'Your Item Name'),
                  buildDetailRow('Location', 'Your Item Location'),
                  buildDetailRow('Status', 'In Transit'),
                  buildDetailRow('Carrier', 'XYZ Shipping'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Delivery History',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Display the delivery history list
                  Column(
                    children: deliveryHistory.map((event) {
                      return buildDeliveryEvent(event);
                    }).toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const Icon(
            Icons.place,
            color: TColors.primary,
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(
            '$label: $value',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget buildDeliveryEvent(DeliveryEvent event) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const Icon(
            Icons.timeline,
            color: TColors.primary,
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(
            '${event.description} - ${event.timestamp}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

// Model class for a delivery event
class DeliveryEvent {
  final String description;
  final String timestamp;

  DeliveryEvent(this.description, this.timestamp);
}
