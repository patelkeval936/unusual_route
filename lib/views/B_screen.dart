import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';

class BScreen extends StatelessWidget {
  const BScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("B Screen"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              // context.pushReplacementNamed(MyRoutes.AScreen);
              context.pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyRoutes.CScreen);
                },
                child: Text("C Screen")),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyRoutes.FScreen);
                },
                child: Text("F Screen")),
          ],
        ),
      ),
    );
  }
}
