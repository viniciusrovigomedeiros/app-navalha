import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/assets.dart';
import '../../infra/model/user_model.dart';
import '../home/home_page.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BodyEditingProfile(),
    );
  }
}

class BodyEditingProfile extends StatefulWidget {
  const BodyEditingProfile({Key? key}) : super(key: key);

  @override
  State<BodyEditingProfile> createState() => _BodyEditingProfileState();
}

class _BodyEditingProfileState extends State<BodyEditingProfile> {
  // File? arquivo = null;
  // final picker = ImagePicker();

  // Future getFileFromGallery() async {
  //   final file = await picker.pickImage(source: ImageSource.gallery);

  //   if (file != null) {
  //     setState(
  //       () => arquivo = File(
  //         file.path,
  //       ),
  //     );
  //   }
  // }

  // showPreview(file) async {
  //   file = await Get.to(
  //     () => PreviewPage(file: file),
  //   );

  //   if (file != null) {
  //     setState(() => arquivo = file);
  //     Get.back();
  //   }
  // }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void setUserInfo() {
    UsuarioModel usuario = GetIt.I.get<UsuarioModel>();
    nameController.text = usuario.userName!;
    emailController.text = usuario.userEmail!;
    passwordController.text = usuario.userPassword!;
  }

  @override
  Widget build(BuildContext context) {
    setUserInfo();
    return ListView(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Anexo(),
                  const Text('Alterar foto:',
                      style: TextStyle(color: Colors.white)),
                  // ElevatedButton.icon(
                  //   onPressed: () => Get.to(
                  //     () => CameraCamera(
                  //       onFile: (file) => showPreview(file),
                  //     ),
                  //   ),
                  //   icon: const Icon(Icons.camera_alt),
                  //   label: const Padding(
                  //     padding: EdgeInsets.all(10),
                  //     child: Text('Tire uma foto'),
                  //   ),
                  //   style: ElevatedButton.styleFrom(
                  //     elevation: 0,
                  //     textStyle: const TextStyle(
                  //       fontSize: 14,
                  //     ),
                  //   ),
                  // ),
                  // const Padding(
                  //   padding: EdgeInsets.only(top: 10),
                  //   child: Text('ou', style: TextStyle(color: Colors.white)),
                  // ),
                  // OutlinedButton.icon(
                  //   icon: const Icon(Icons.attach_file),
                  //   label: const Text('Selecione um arquivo'),
                  //   onPressed: () => getFileFromGallery(),
                  // ),
                  const SizedBox(
                    width: 350,
                    child: Text(
                      "Nome:",
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: TextField(
                          controller: nameController,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92),
                              fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    width: 350,
                    child: Text(
                      "E-mail:",
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: TextField(
                          controller: emailController,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92),
                              fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    width: 350,
                    child: Text(
                      "Celular:",
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
                          style: TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92),
                              fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    width: 350,
                    child: Text(
                      "Data de Nascimento:",
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
                          style: TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92),
                              fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    width: 350,
                    child: Text(
                      "Senha:",
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92),
                              fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    width: 350,
                    child: Text(
                      "Confirmar:",
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92),
                              fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50, bottom: 50),
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            width: 135,
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(36, 36, 36, 1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) => const HomePage(
                                              scaffoldKeymed: null,
                                            )),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Confirmar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
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
            ],
          ),
        ),
      ],
    );
  }
}

class PreviewPage extends StatefulWidget {
  File file;
  PreviewPage({Key? key, required this.file}) : super(key: key);

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned.fill(
                child: Image.file(widget.file, fit: BoxFit.cover),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: IconButton(
                          icon: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () => Get.back(result: widget.file),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () => Get.back(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class Anexo extends StatefulWidget {
  Anexo({
    Key? key,
  }) : super(key: key);

  @override
  State<Anexo> createState() => _AnexoState();
}

class _AnexoState extends State<Anexo> {
  File? arquivo;
  final picker = ImagePicker();

  Future getFileFromGallery() async {
    final file = await picker.pickImage(source: ImageSource.gallery);

    if (file != null) {
      setState(
        () => arquivo = File(
          file.path,
        ),
      );
    }
  }

  showPreview(file) async {
    file = await Get.to(
      () => PreviewPage(file: file),
    );

    if (file != null) {
      setState(() => arquivo = file);
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: SizedBox(
            height: 10,
            width: 10,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: !arquivo.isNull
                      ? Image.file(arquivo!, fit: BoxFit.cover)
                      : Image.asset(
                          imgProfileDefault,
                          fit: BoxFit.cover,
                        ),
                ),
                const CircleAvatar(
                  radius: 75,
                  backgroundColor: Color.fromARGB(132, 0, 0, 0),
                ),
                Positioned(
                  top: 40,
                  left: 40,
                  child: IconButton(
                    icon: const Icon(
                      Icons.add_a_photo_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                    onPressed: () {
                      AlertDialogBarberWithoutButton(
                              showpreview: showPreview,
                              getpreview: getFileFromGallery,
                              icon: Icons.add_a_photo_rounded,
                              iconColor: Colors.white,
                              text: 'asdfdsasd')
                          .showCustomDialog(context);
                    },
                    // shadows: [
                    //   BoxShadow(
                    //     spreadRadius: 3,
                    //     blurRadius: 10,
                    //     color: Colors.black,
                    //   )
                    // ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AlertDialogBarberWithoutButton {
  AlertDialogBarberWithoutButton({
    required this.text,
    required this.icon,
    required this.iconColor,
    required this.showpreview,
    required this.getpreview,
  });
  final String text;
  final IconData icon;
  final Color iconColor;

  final Function showpreview;
  final Function getpreview;

  void baterfoto() {
    Get.to(
      () => CameraCamera(
        onFile: (file) => showpreview(file),
      ),
    );
  }

  void escolhergaleria() {
    getpreview();
  }

  void showCustomDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            height: 240,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(36, 36, 36, 1),
                borderRadius: BorderRadius.circular(40)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                    icon: const Icon(Icons.attach_file),
                    label: const Text(
                      'Selecione um arquivo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        inherit: false,
                      ),
                    ),
                    // onPressed: () {},
                    onPressed: escolhergaleria),
                const Text(
                  'ou',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    inherit: false,
                  ),
                ),
                OutlinedButton.icon(
                  onPressed: baterfoto,
                  // onPressed: () => Get.to(
                  //   () => CameraCamera(
                  //     onFile: (file) => showPreview(file),
                  //   ),
                  // ),
                  icon: const Icon(Icons.camera_alt),
                  label: const Text(
                    'Tire uma foto',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      inherit: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    Get.back();
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Cancelar',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }
}
