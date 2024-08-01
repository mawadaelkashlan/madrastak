import 'package:flutter/material.dart';
import 'package:madrastak/pages/home.dart';
import 'package:madrastak/pages/login_page.dart';
import 'package:madrastak/utils/color_utility.dart';
import 'package:madrastak/widgets/default_form_field.dart';
import 'package:madrastak/widgets/elevated_button_widget.dart';
import 'package:madrastak/widgets/question_in_form.dart';
import 'package:madrastak/widgets/social_row.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? nameController;
    TextEditingController? emailController;
    TextEditingController? classController;
    TextEditingController? phoneController;
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'أنشئ حساب',
                      style: TextStyle(
                          fontFamily: 'NeoSansArabic',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: ColorUtility.primary),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultFormField(
                      labelText: 'الاسم الاول',
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DefaultFormField(
                      labelText: "البريد الاكتروني",
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DefaultFormField(
                      labelText: 'الصف',
                      controller: classController,
                      suffix: const Icon(
                        Icons.arrow_drop_down,
                        size: 25,
                        color: ColorUtility.primary,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DefaultFormField(
                      labelText: 'رقم الهاتف ',
                      controller: phoneController,
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
                    const SizedBox(
                      height: 25,
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
                                text: 'سجل')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    QuestionInForm(
                      question: 'لديك حساب بالفل؟',
                      loginAsStudent: 'سجل الدخول',
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
