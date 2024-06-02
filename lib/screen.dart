import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String title;
  final TextEditingController controller = TextEditingController();
  Screen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Center(
        child: Column(
          children: [
            Text('Your content here!\n$title'),
            TextField(
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () {
                print(controller.text);
                Navigator.pop(context, controller.text);
              },
              child: Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
