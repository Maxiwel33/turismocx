import 'package:flutter/material.dart';

class HeaderWithSeacherBox extends StatelessWidget {
  const HeaderWithSeacherBox({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20 * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 13,
              top: 13,
              bottom: 9 * 2,
            ),
            height: size.height * 0.2 - 37,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                const Text(
                  'Bem Vindo a App Caxias',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "assets/image/logo00.png",
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 0.3,
                      color: Colors.black,
                    )
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        hintText: "Buscar",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
