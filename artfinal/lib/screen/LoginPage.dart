import 'package:artfinal/screen/Services.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _obscureText = true; // متغير للتحكم في إظهار أو إخفاء النص

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "مركز عنان للعلاج بالفن",
          style: TextStyle(fontSize: 26, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 70, 116, 70),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // تأكد من أن الصورة موجودة في المسار الصحيح
          Image.asset(
            'assest/anan2.jpg',
            fit: BoxFit.cover, // لضمان تغطية الصورة لكامل الخلفية
          ),
          // إذا لم تكن بحاجة إلى حاوية التزيين الشفافة، يمكنك إزالتها
           Container(
            decoration: BoxDecoration(
             color: Colors.grey.withOpacity(0.5),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               SizedBox(height: 50,) ,// وضع اللوجو في الوسط
                Center(
                  child: Image.asset(
                    'assest/Logo.png',
                    height: 270,
                    width: 270,
                    fit: BoxFit.contain,
                    
                  ),
                  
                ),
                Padding(padding: EdgeInsets.all(10)),
                const SizedBox(height: 30), // زيادة المسافة فوق النموذج
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      // حقل البريد الإلكتروني
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "Enter Email:",
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // حقل كلمة المرور
                      TextFormField(
                        obscureText: _obscureText, // لجعل كلمة المرور غير مرئية بناءً على الحالة
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "Enter Password:",
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          prefixIcon: Icon(
                            Icons.lock, // تغيير الأيقونة إلى أيقونة القفل
                            color: Colors.white,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText; // تبديل حالة إظهار النص
                              });
                            },
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Services()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromARGB(255, 70, 116, 70),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.login,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}