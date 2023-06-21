import 'package:flutter/material.dart';

import 'features/global/constant/page_const.dart';
import 'features/user/presentation/pages/credential/login_page.dart';
import 'features/user/presentation/pages/credential/sign_up_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case PageConst.loginPage:
        {
          return materialPageBuilder(widget: const LoginPage());
        }
      case PageConst.registrationPage:
        {
          return materialPageBuilder(widget: const SignUpPage());
        }

      default:
        return materialPageBuilder(widget: const ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("error"),
      ),
      body: const Center(
        child: Text("error"),
      ),
    );
  }
}

MaterialPageRoute materialPageBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
