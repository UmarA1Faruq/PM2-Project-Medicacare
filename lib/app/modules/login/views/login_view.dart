import 'package:flutter/material.dart';
import 'package:myapp/app/modules/login/controllers/login_controller.dart';
// import 'login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Bagian atas (Putih)
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: Column(
                  children: const [
                    Text(
                      'MedicaCare',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Health starts with us',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              // Bagian bawah (Biru)
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF007BFF), // Warna biru
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Welcome Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: controller.emailController,
                      style: const TextStyle(
                        color: Colors.black, // Warna teks input (hitam)
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email Address', // Teks placeholder
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(153, 58, 53, 53), // Warna blur (abu-abu)
                        ),
                        filled: true,
                        fillColor: Colors.white, // Warna latar input
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: controller.passwordController,
                      obscureText: true,
                      style: const TextStyle(
                        color: Colors.black, // Warna teks input (hitam)
                      ),
                      decoration: InputDecoration(
                        hintText: 'Password', // Teks placeholder
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(153, 61, 52, 52), // Warna blur (abu-abu)
                        ),
                        filled: true,
                        fillColor: Colors.white, // Warna latar input
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Tambahkan logika untuk lupa kata sandi
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => controller.login(context),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF007BFF), backgroundColor: Colors.white, // Warna teks biru
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('Log In'),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman pendaftaran
                      },
                      child: const Text(
                        "Don't have an account? Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
