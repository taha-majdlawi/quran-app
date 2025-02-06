import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:quran_app/constents.dart';
import 'package:quran_app/helper/show_snak_bar.dart';
import 'package:quran_app/screens/home_bage.dart';
import 'package:quran_app/screens/regestier_screen.dart';
import 'package:quran_app/widgets/custom_textFeild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  Image.asset(
                    'assets/images/img1.png',
                    height: 300,
                  ),
                  const Text(
                    'Qurany',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        CustomeFormTextfeild(
                          onChange: (data) {
                            email = data;
                          },
                          hint: 'Email',
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomeFormTextfeild(
                          onChange: (data) {
                            password = data;
                          },
                          hint: 'Password',
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              isLoading = true;
                              setState(() {});
                              try {
                                await loginUser();
                                showSnackBar(context, "Loged in Successfully");
                                //Navigate to home screen
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const HomePage();
                                  },
                                ));
                              } on FirebaseAuthException catch (e) {
                                showSnackBar(context, e.code);
                              } catch (e) {
                                showSnackBar(context, e.toString());
                              }
                              isLoading = false;
                              setState(() {});
                            } else {}
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                6.0,
                              ), // Set your desired border radius
                            ),
                            minimumSize: const Size(
                              double.infinity,
                              50,
                            ), // Full width and fixed height
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 24,
                              color: kPrimaryColor,
                            ),
                          ), // Full width and fixed height
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const RegisterScreen();
                              },
                            ));
                          },
                          child: const Text(
                            '  Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
