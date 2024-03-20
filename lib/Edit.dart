import 'package:flutter/material.dart';
import 'package:minipro/main.dart';

void main() {
  runApp(EditApp());
}

class EditApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Edit(),
    );
  }
}

class Edit extends StatelessWidget {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Edit Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
               controller: nameController,
               decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
            SizedBox(height: 20),
            TextFormField(
              controller: surnameController,
              decoration: InputDecoration(
                labelText: 'Surname',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                labelText: 'PhoneNumber',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    String name = nameController.text.trim();
                    String surname = surnameController.text.trim();
                    String username = usernameController.text.trim();
                    String password = passwordController.text.trim();
                    String email = emailController.text.trim();
                    String phoneNumber = phoneNumberController.text.trim();

                  if (name.isEmpty ||
                      surname.isEmpty ||
                      username.isEmpty ||
                      password.isEmpty ||
                      email.isEmpty ||
                      phoneNumber.isEmpty) {
                    showDialog(
                    context: context,
                    builder: (context) {
                    return AlertDialog(
                      title: Text('แจ้งเตือน'),
                      content: Text('กรุณากรอกข้อมูลให้ครบทุกช่อง'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        child: Text('ตกลง'),
                        ),
                      ],
                    );
                    },
                    );
                    } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LessonPage()),
                        );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: Text('Submit',
                    style: TextStyle(color: Colors.white, // ตัวหนังสือสีขาว
                    )
                  )
                ),
                ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LessonPage()), // เปลี่ยนเป็น MyApp() หรือหน้าหลักของแอพพลิเคชันของคุณ
                  );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Cancel',
                    style: TextStyle(color: Colors.white, // ตัวหนังสือสีขาว
                    ),
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
