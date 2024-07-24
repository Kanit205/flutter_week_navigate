import 'package:flutter/material.dart';
import 'package:flutter_week1/pages/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<RegisterPage> {
  TextEditingController nameCtl = TextEditingController();
  TextEditingController phoneCtl = TextEditingController();
  TextEditingController emailCtl = TextEditingController();
  TextEditingController passwordCtl = TextEditingController();
  TextEditingController conPasswordCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ลงทะเบียน'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'ชื่อ-นามสกุล',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
             TextField(
              controller: nameCtl,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const Row(
              children: [
                Text(
                  'หมายเลขโทรศัพร์',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TextField(
              controller: phoneCtl,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const Row(
              children: [
                Text(
                  'อีเมลล์',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TextField(
              controller: emailCtl,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const Row(
              children: [
                Text(
                  'รหัสผ่าน',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TextField(
              controller: passwordCtl,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const Row(
              children: [
                Text(
                  'ยืนยันรหัสผ่าน',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TextField(
              controller: conPasswordCtl,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FilledButton(
                      onPressed: () {
                        register();
                      },
                      child: const Text(
                        'สมัครสมาชิก',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('หากมีบัญชีอยู่แล้ว?', style: TextStyle(fontSize: 15)),
                TextButton(onPressed: (){const LoginPage();}, child:  const Text('เข้าสู่ระบบ',style: TextStyle(
                      fontSize: 15
                     ),))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void register() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        ));
  }
  void login() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ));
  }
}
