import 'package:flutter/material.dart';
import 'package:madrastak/pages/home.dart';
import 'package:madrastak/utils/color_utility.dart';
import 'package:madrastak/widgets/default_form_field.dart';
import 'package:madrastak/widgets/elevated_button_widget.dart';
import 'package:madrastak/widgets/question_in_form.dart';
import 'package:madrastak/widgets/social_row.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? emailController;
    TextEditingController? passwordController;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Form(
              // key: ,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      ' مرحبا بعودتك',
                      style: TextStyle(
                          fontFamily: 'NeoSansArabic',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: ColorUtility.secondary),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultFormField(
                      labelText: 'البريد الالكتروني',
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DefaultFormField(
                      labelText: 'كلمة السر ',
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: passwordController,
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'نسيت كلمة السر؟',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: ColorUtility.secondary,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButtonWidget(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (ctx) => const Home()));
                                },
                                text: 'تسجيل الدخول')),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 100,
                          decoration: BoxDecoration(
                              color: ColorUtility.primary,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "او اكمل باستخدام",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ColorUtility.primary),
                          ),
                        ),
                        Container(
                          height: 4,
                          width: 100,
                          decoration: BoxDecoration(
                              color: ColorUtility.primary,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    QuestionInForm(
                      question: "ليس لديك حساب؟",
                      loginAsStudent: 'سجل كطالب',
                      loginAsTeacher: 'سجل كمعلم',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const LoginPage()));
                      },
                      ontap: () {},
                    ),
                    SocialRow(
                      facebookClicked: () {},
                      googleClicked: () {},
                      appleClicked: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
