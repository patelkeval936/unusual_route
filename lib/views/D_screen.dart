import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';

class DScreen extends StatelessWidget {
  const DScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("D Screen"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              // context.pushReplacementNamed(MyRoutes.CScreen);
              context.pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // context.go('F/E');
                  context.goNamed(MyRoutes.EScreen);
                },
                child: Text("E Screen")),
            // ElevatedButton(onPressed: () {}, child: Text("E Screen")),
          ],
        ),
      ),
    );
  }
}
