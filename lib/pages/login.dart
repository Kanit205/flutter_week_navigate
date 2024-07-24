import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_week1/pages/register.dart';
import 'package:flutter_week1/pages/showtrip.dart';
import 'package:http/http.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
 
  @override
  State<LoginPage> createState() => _LoginPageState();
 
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneCtl = TextEditingController();
  TextEditingController passwordCtl = TextEditingController();

  int loginTime=0;
  String status=''; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(10.0),
          child:  Column(
            children: [
              Image.asset('assets/images/logo.png'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('หมายเลขโทรศัพท์',style: TextStyle(
                    fontSize:18 
                  ),),
                ],
              ),
              TextField(
                controller: phoneCtl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  )
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('รหัสผ่าน',style: TextStyle(
                      fontSize:18
                     ),),
                  ],
                ),
              ),
               TextField(
                obscureText: true,
                controller: passwordCtl,
                decoration: InputDecoration(
                border: OutlineInputBorder()
               ),
               ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     TextButton(onPressed: (){register();}, child:  const Text('ลงทะเบียนใหม่',style: TextStyle(
                      fontSize: 18
                     ),)),
                     FilledButton(onPressed: (){login();}, child: const Text('เข้าสู่ระบบ',style: TextStyle(
                      fontSize: 18
                     ),)),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                 child: Text(status,style: const TextStyle(
                  fontSize: 20
                 ),),
               ),
            ],
          ),
        ),
      )
    );
  }
  
  void register() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage(),
    ));
    
  }
  
  void login() {
    log(phoneCtl.text);
    log(passwordCtl.text);
    if(phoneCtl.text == '0982212696' && passwordCtl.text == '123'){
      log('yessss');
       Navigator.push(context, MaterialPageRoute(builder: (context) => const showTrip(), ));
    }
    loginTime++;
    setState(() {
      status='login time: $loginTime';
    });
  }
  

}