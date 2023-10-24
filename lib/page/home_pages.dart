import 'package:belajar_app/page/file_picker_page.dart';
import 'package:belajar_app/page/image_pages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = "Ahmad Dwi Ariyanto";
    var jurusan = "Aplicaton Software Enggenering";
    var panggilan = "yogi";
    var domisil = "Klaten";
    var umur = "19";
    var email = "permadiyogi807@gmail.com";
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 12, 230, 23),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(3, 6),
                  blurRadius: 10,
                )
              ],
              border:
                  Border.all(color: Color.fromARGB(255, 13, 63, 202), width: 3),
            ),
            height: 500,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/lion.jpg"),
                          fit: BoxFit.fill),
                    ),
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 75, 126, 100),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text("identitas"),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("jurusan : "),
                      Text(jurusan),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Panggilan : "),
                      Text(panggilan),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Domisil : "),
                      Text(domisil),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Umur : "),
                      Text(umur),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Email : "),
                      Text(email),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (builder) => const FilePickerPage()),
                      );
                    },
                    icon: const Icon(Icons.login),
                    label: const Text("Login"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (builder) => const ImagePage()),
                      );
                    },
                    icon: const Icon(Icons.login),
                    label: const Text("Login"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
