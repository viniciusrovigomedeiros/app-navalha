import 'package:flutter/material.dart';

import '../../../core/assets.dart';
import '../../login/login_page.dart';

class BarberShopThree extends StatefulWidget {
  const BarberShopThree({Key? key}) : super(key: key);

  @override
  State<BarberShopThree> createState() => _BarberShopThreeState();
}

class _BarberShopThreeState extends State<BarberShopThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(imgFundoGeral),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: SizedBox(
                        width: 350,
                        child: Text(
                          "Insira sua senha",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 36, 36, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: TextField(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 350,
                      child: Text(
                        "Confirme sua senha",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 36, 36, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: TextField(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //Botao proximo daqui pra baixo
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 50, bottom: 30),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      width: 120,
                      height: 45,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(36, 36, 36, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const Login()),
                                  ),
                                );
                              },
                              child: const Text(
                                "Próximo",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: -30,
                      child: CircleAvatar(
                        radius: 29,
                        backgroundColor: Color.fromRGBO(48, 48, 48, 1),
                        child: Icon(
                          Icons.check_circle_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
