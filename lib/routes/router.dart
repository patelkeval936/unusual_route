import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unusual_route/routes/routes.dart';
import '../views/A_screen.dart';
import '../views/B_screen.dart';
import '../views/C_screen.dart';
import '../views/D_screen.dart';
import '../views/E_screen.dart';
import '../views/F_screen.dart';


class GoAppRouter {

  static final GoAppRouter _instance = GoAppRouter._internal();

  GoAppRouter._internal() {
    print("Instance Created");
  }

  factory GoAppRouter() => _instance;

  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyRoutes.AScreen,
          path: '/',
          pageBuilder: (context, state) {
            return  MaterialPage(child: AScreen(),);
          },
          routes: [
            GoRoute(
              name: MyRoutes.BScreen,
              path: 'B',
              pageBuilder: (context, state) {
                return const MaterialPage(
                  child: BScreen(),
                );
              },
              routes: [
                GoRoute(
                  name: MyRoutes.CScreen,
                  path: 'C',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: CScreen(),);
                  },
                  routes: [
                    GoRoute(
                      name: MyRoutes.DScreen,
                      path: 'D',
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: DScreen(),);
                      },
                    ),
                  ],
                ),
                GoRoute(
                  name: MyRoutes.FScreen,
                  path: 'F',
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: FScreen(),);
                  },
                  routes: [
                    GoRoute(
                      name: MyRoutes.EScreen,
                      path: 'E',
                      pageBuilder: (context, state) {
                        return const MaterialPage(child: EScreen(),);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      },
    );
    return router;
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("ERROR"),
      ),
    );
  }
}
