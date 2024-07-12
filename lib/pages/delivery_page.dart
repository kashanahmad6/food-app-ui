import 'package:audio_player/models/resturant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text('Delivery Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Text(
              'Thank You For your Order!',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 25),
            Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
              ),
              child: Consumer<Resturant>(
                builder: (context, resturant, child) {
                  return Text(
                    resturant.displayCartReceipt(),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Estimated Dlivery Time is: 4:10 pm')
          ],
        ),
      ),
      bottomNavigationBar: customBottomNavigationBar(context),
    );
  }

  Widget customBottomNavigationBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            const Icon(Icons.person),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Ali'),
                Text(
                  'Driver',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
            const SizedBox(
              width: 200,
            ),
            Icon(
              Icons.message,
              color: Colors.grey.shade600,
            ),
            const SizedBox(
              width: 25,
            ),
            const Icon(
              Icons.call,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
