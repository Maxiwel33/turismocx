import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:turismoapp/pages/menu.dart';

class LoginSenha extends StatelessWidget {
  const LoginSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x665ac18e),
                        Color(0x995ac18e),
                        Color(0xcc5ac18e),
                        Color(0xff5ac18e),
                      ],
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 40),
                        buildEmail(),
                        const SizedBox(height: 20),
                        buildPassword(),
                        const SizedBox(height: 40),
                        bottao(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 60,
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff5ac18e),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      ),
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 60,
        child: const TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock_clock_outlined,
                color: Color(0xff5ac18e),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      ),
    ],
  );
}

bottao(BuildContext context) {
  return ClipRRect(
    // ignore: sort_child_properties_last
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MenuPage()),
        );
      },
      child: const Text(
        'Acesso',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
    borderRadius: BorderRadius.circular(50),
  );
}
