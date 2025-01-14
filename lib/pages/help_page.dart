import 'package:flutter/material.dart';
import '../back button/CustomAppBar.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  void _showInfoDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_back(
        title: 'Help',
        onBack: () => Navigator.pop(context),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Colors.lightGreen],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  _showInfoDialog(
                    context,
                    'FAQ',
                    'Here are some frequently asked questions:\n\n'
                        '1. What are the activities around here?\n'
                        '   Our facility offers a bunch of interesting activities for everyone.\n'
                        '   Just ask at the reception for more information.\n\n'
                        '2. What happens when the timer hits 0?\n'
                        '   You will not be able to enter the AFrame once the timer hits 0!\n'
                        '   Just be sure to check everything before leaving!',
                  );
                },
                child: const Text('FAQ'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  _showInfoDialog(
                    context,
                    'Contact Us\n',
                    'Feel free to reach out to us at "email" !\n'
                        'Also feel free to contact us at "telefon" !\n\n'
                        'If there are urgent matters please go to the reception!',
                  );
                },
                child: const Text('Contact Us'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  _showInfoDialog(
                    context,
                    'Troubleshooting',
                    'For troubleshooting matters please ask the personel at the reception for further guidance.',
                  );
                },
                child: const Text('Troubleshooting'),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
