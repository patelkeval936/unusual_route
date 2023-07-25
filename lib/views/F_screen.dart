import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';

class FScreen extends StatelessWidget {
  const FScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("F Screen"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              // context.pushReplacementNamed(MyRoutes.BScreen);
              context.pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyRoutes.EScreen);
                },
                child: Text("E Screen")),
          ],
        ),
      ),
    );
  }
}
