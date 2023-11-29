//checkout
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/bag_page/bage_controller.dart';
import 'package:get/get.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool isExpanded = false;
  String selectedPayment = 'gopay'; // Default selected payment method
  final BageController _bageController =
      Get.put(BageController()); // Create an instance of the bag controller

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 255, 0, 0),
            onPrimary: Colors.white,
            elevation: 4.0,
          ),
          child: Text('Confirm Payment'),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: isExpanded ? 280.0 : 0.0,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              constraints: BoxConstraints(maxWidth: 400.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  // Container for GoPay
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundImage: AssetImage('lib/images/gopay.png'),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'GoPay',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Radio(
                          value: 'gopay',
                          groupValue: selectedPayment,
                          onChanged: (String? value) {
                            setState(() {
                              selectedPayment = value ?? 'gopay';
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Container for Dana
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundImage: AssetImage('lib/images/dana.png'),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Dana',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Radio(
                          value: 'dana',
                          groupValue: selectedPayment,
                          onChanged: (String? value) {
                            setState(() {
                              selectedPayment = value ?? 'dana';
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Button for purchase aligned to the right
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle the button press for purchase
                        _handlePurchase(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 0, 0),
                      ),
                      child: Text(
                        'Purchase',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Function to handle the purchase logic
  void _handlePurchase(BuildContext context) {
    // Use the BageController to handle the logic
    _bageController.checkout(context, selectedPayment);
  }
}
