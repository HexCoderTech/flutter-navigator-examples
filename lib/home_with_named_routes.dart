import 'package:flutter/material.dart';

class HomeWithNamedRoutes extends StatefulWidget {
  const HomeWithNamedRoutes({super.key});

  @override
  State<HomeWithNamedRoutes> createState() => _HomeWithNamedRoutesState();
}

class _HomeWithNamedRoutesState extends State<HomeWithNamedRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/screen1");
                },
                child: const Text("Screen 1 Routed")),
            ElevatedButton(
                onPressed: () async {
                  var text = await Navigator.pushNamed(context, "/screen2");
                  if (text != null) {
                    print("Returned text is $text");
                  } else {
                    print("No text returned");
                  }
                },
                child: const Text("Screen 2 Routed")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/screen3");
                },
                child: const Text("Screen 3 Routed")),
          ],
        ),
      ),
    );
  }
}
