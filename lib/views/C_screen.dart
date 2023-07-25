import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';

class CScreen extends StatelessWidget {
  const CScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C Screen"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyRoutes.DScreen);
                },
                child: Text("D Screen")),
            // ElevatedButton(onPressed: () {}, child: Text("E Screen")),
          ],
        ),
      ),
    );
  }
}
