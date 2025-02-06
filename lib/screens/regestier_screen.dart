import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:quran_app/constents.dart';
import 'package:quran_app/helper/show_snak_bar.dart';
import 'package:quran_app/screens/login_screen.dart';
import 'package:quran_app/widgets/custom_textFeild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
          ),
          backgroundColor: kPrimaryColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 42,
                ),
                // Image.asset(
                //   'assets/images/scholar.png',
                // ),
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
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Register',
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
                                await registerUser();
                                showSnackBar(
                                    context, "Registered Successfully");
                                //Navigate to home screen
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginScreen();
                                  },
                                ));
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'weak-password') {
                                  showSnackBar(context, 'weak-password');
                                } else if (e.code == "email-already-in-use") {
                                  showSnackBar(context,
                                      'Email already in use, Try to Sign In');
                                }
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
                            'Register',
                            style: TextStyle(
                              fontSize: 24,
                              color: kPrimaryColor,
                            ),
                          ), // Full width and fixed height
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          '  Sign In',
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
    );
  }

  Future<void> registerUser() async {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
