import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(
                "assets/logo/logo-only.png",
                fit: BoxFit.contain,
              ),
            ),
            TextField(
              cursorColor: Colors.black87,
              decoration: InputDecoration(
                label: const Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                border: InputBorder.none,
                fillColor: Colors.grey.shade300,
                filled: true,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              cursorColor: Colors.black87,
              obscureText: true,
              decoration: InputDecoration(
                label: const Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                border: InputBorder.none,
                fillColor: Colors.grey[300],
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child: const Text("Log in"),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFEC5F5F),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text("Forgot Password?"),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 20),
                    height: 1,
                    color: const Color(0xFFC7C9D9),
                  ),
                ),
                const Text(
                  "or",
                  style: TextStyle(
                    color: Color(0xFF8C8C8C),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 1,
                    color: const Color(0xFFC7C9D9),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/fb.png"),
                        const SizedBox(width: 10),
                        const Text("Log in with Facebook"),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF0082CD),
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google.png"),
                    const SizedBox(width: 10),
                    const Text(
                      "Log in with Google",
                      style: TextStyle(
                        color: Color(0xFF303030),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF6F7FA),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account? ",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Sign up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
