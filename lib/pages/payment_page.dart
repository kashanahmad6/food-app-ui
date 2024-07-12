import 'package:audio_player/pages/delivery_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool iscvvfocused = false;

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Confirm Payment'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('  CardNumber: $cardNumber'),
                  Text('  Expiry Date: $expiryDate'),
                  Text('  Card Holder Name: $cardHolderName'),
                  Text('  CVV: $cvvCode'),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DeliveryPage();
                      },
                    ),
                  );
                },
                child: const Text('yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('no'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // credit card

            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: iscvvfocused,
                onCreditCardWidgetChange: (value) {}),
            // credit card form

            CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(
                    () {
                      cardNumber = data.cardNumber;
                      expiryDate = data.expiryDate;
                      cardHolderName = data.cardHolderName;
                      cvvCode = data.cvvCode;
                    },
                  );
                },
                formKey: formKey),
            const SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: userTappedPay,
              child: Container(
                margin: const EdgeInsets.all(15),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Pay Now',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Column(
//           children: [
//             // credit card

//             CreditCardWidget(
//                 cardNumber: cardNumber,
//                 expiryDate: expiryDate,
//                 cardHolderName: cardHolderName,
//                 cvvCode: cvvCode,
//                 showBackView: iscvvfocused,
//                 onCreditCardWidgetChange: (value) {}),

//             // credit card form

//             CreditCardForm(
//                 cardNumber: cardNumber,
//                 expiryDate: expiryDate,
//                 cardHolderName: cardHolderName,
//                 cvvCode: cvvCode,
//                 onCreditCardModelChange: (data) {
//                   setState(
//                     () {
//                       cardNumber = data.cardNumber;
//                       expiryDate = data.expiryDate;
//                       cardHolderName = data.cardHolderName;
//                       cvvCode = data.cvvCode;
//                     },
//                   );
//                 },
//                 formKey: formKey),
//             const Spacer(),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) {
//                     return const DeliveryPage();
//                   }),
//                 );
//               },
//               child: Container(
//                 margin: const EdgeInsets.all(15),
//                 height: 60,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     'Go To Checkout',
//                     style: TextStyle(
//                         color: Colors.black, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//           ],
//         ),