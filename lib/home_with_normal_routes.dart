import 'package:flutter/material.dart';

import 'package:navigation_demo/screen.dart';

class HomeWithNormalRoutes extends StatefulWidget {
  const HomeWithNormalRoutes({super.key});

  @override
  State<HomeWithNormalRoutes> createState() => _HomeWithNormalRoutesState();
}

class _HomeWithNormalRoutesState extends State<HomeWithNormalRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen(title: "Screen 1"),
                    ),
                  );
                },
                child: const Text("Screen 1")),
            ElevatedButton(
                onPressed: () async {
                  var text = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen(title: "Screen 2"),
                    ),
                  );
                  if (text != null) {
                    print("Returned text is $text");
                  } else {
                    print("No text returned");
                  }
                },
                child: const Text("Screen 2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen(title: "Screen 3"),
                    ),
                  );
                },
                child: const Text("Screen 3")),
          ],
        ),
      ),
    );
  }
}
