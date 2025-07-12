import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../home page/view/home screen.dart';
import '../../providers/auth_provider.dart';

class LoginBtn extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  LoginBtn({
    super.key,
    required this.formKey,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * .4,
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            String username = usernameController.text.trim();
            String password = passwordController.text.trim();
            print(username);
            print(password);

            Provider.of<AuthProvider>(
              context,
              listen: false,
            ).login(username, password);
            Future.microtask(() {
              if (Provider.of<AuthProvider>(
                context,
                listen: false,
              ).isLoggedIn) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => homePage()),
                );
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Log in successfull')));
                print('Log in successfull');
              } else {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Log in filed')));
                print('Log in filed');
              }
            });
          } else {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('that fild requred')));
            print('that fild requred');
          }
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.black),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Login", style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(width: 12),
            Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
